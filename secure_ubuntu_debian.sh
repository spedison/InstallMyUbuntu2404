#  Leia com cuidado esse Script e o aplique cuidadosamente.


#!/bin/bash

echo "[+] Iniciando configuração de segurança..."

### 1. UFW (Firewall simples e eficaz)
echo "[+] Ativando e configurando firewall UFW..."
sudo apt update
sudo apt install -y ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow OpenSSH
sudo ufw enable

### 2. AppArmor
echo "[+] Garantindo que AppArmor esteja ativo..."
sudo apt install -y apparmor apparmor-utils
sudo systemctl enable apparmor
sudo systemctl start apparmor

### 3. Aplicando modo enforce a todos os perfis carregados
echo "[+] Aplicando modo 'enforce' nos perfis AppArmor ativos..."
for perfil in $(sudo apparmor_status | grep "profiles are loaded" | awk '{print $1}'); do
    sudo aa-enforce "$perfil" 2>/dev/null
done

### 4. Endurecer permissões padrão (umask)
echo "[+] Configurando umask segura..."
UMASK_LINE='umask 027'
if ! grep -q "$UMASK_LINE" ~/.profile; then
    echo "$UMASK_LINE" >> ~/.profile
fi
if ! grep -q "$UMASK_LINE" ~/.bashrc; then
    echo "$UMASK_LINE" >> ~/.bashrc
fi

### 5. Instalar ferramentas de auditoria
echo "[+] Instalando ferramentas de auditoria..."
sudo apt install -y auditd logwatch chkrootkit rkhunter

### 6. Regras Docker (sem muito impacto)
echo "[+] Verificando perfil AppArmor padrão do Docker..."
if command -v docker &>/dev/null; then
    sudo apparmor_parser -r /etc/apparmor.d/docker
    echo "[+] Docker está presente. Use perfis AppArmor com --security-opt quando possível."
fi

echo "[✓] Endurecimento básico aplicado com sucesso."
