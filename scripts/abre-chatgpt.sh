#!/bin/bash

# Edison - Script atualizado para abrir ChatGPT como App no Vivaldi
# Se já existir a janela, apenas dá o foco nela.

# Parâmetros de configuração
VIVALDI_PATH="/snap/bin/vivaldi.vivaldi-stable"  # Caminho para o Vivaldi
PROFILE="Default"              # Nome do perfil do Vivaldi
URL="https://chatgpt.com/"       # URL que será aberta
WINDOW_NAME="ChatGPT"            # Nome que identifica a janela
HOSTNAME=$(hostname)

# Configurações de tamanho e posição
WINDOW_WIDTH=800
WINDOW_HEIGHT=1300
#WINDOW_POS_X=1000
#WINDOW_POS_Y=50

# Descobrir posição do monitor principal
PRIMARY_POS=$(xrandr | grep primary | awk '{print $4}')
POS=$(echo "$PRIMARY_POS" | sed 's/.*+\([0-9]\+\)+\([0-9]\+\)/\1 \2/')
WINDOW_POS_X=$(echo $POS | cut -d' ' -f1)
WINDOW_POS_Y=$(echo $POS | cut -d' ' -f2)

echo "Monitor principal começa em: X=$WINDOW_POS_X Y=$WINDOW_POS_Y"

# Procura por uma janela existente
WINDOW_ID=$(wmctrl -l | grep -i "$HOSTNAME $WINDOW_NAME$" | awk '{print $1}' | head -n 1)

if [ ! -z "$WINDOW_ID" ]; then
    echo "Janela encontrada. Dando foco e trazendo para frente..."
    wmctrl -i -a "$WINDOW_ID"
else
    echo "Nenhuma janela encontrada. Abrindo nova instância..."
    "$VIVALDI_PATH" --profile-directory="$PROFILE" --app="$URL" &
     
# Espera ativa pela janela aparecer
TIMEOUT=15  # Tempo máximo em segundos para tentar
INTERVAL=0  # Intervalo entre tentativas (segundos)
ELAPSED=0

    while [ $ELAPSED -lt $TIMEOUT ]; do
        WINDOW_ID=$(wmctrl -l | grep "$HOSTNAME $WINDOW_NAME$" | awk '{print $1}' | head -n 1)
        if [ ! -z "$WINDOW_ID" ]; then
            echo "Janela encontrada após $ELAPSED segundos."
            break
        fi
        sleep $INTERVAL
        ELAPSED=$(echo "$ELAPSED + $INTERVAL" | bc)
    done

    if [ ! -z "$WINDOW_ID" ]; then
        echo "Nova janela encontrada. Ajustando tamanho e posição..."
        wmctrl -i -r "$WINDOW_ID" -e 0,"$WINDOW_POS_X","$WINDOW_POS_Y","$WINDOW_WIDTH","$WINDOW_HEIGHT"
    else
        echo "Erro: Não foi possível encontrar a nova janela."
    fi
fi

