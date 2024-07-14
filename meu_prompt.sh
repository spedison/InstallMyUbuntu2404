if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
        RED=$(tput setaf 196)$(tput bold)
        YELLOW=$(tput setaf 11)$(tput bold)
        BLUE=$(tput setaf 86)$(tput bold)
        NO_COLOR=$(tput sgr0)$(tput bold)
        VERDE_ABACATE=$(tput setaf 22)$(tput bold)
        VERDE_LIMAO=$(tput setaf 6)$(tput bold)
        AZUL_TURQUESA=$(tput setaf 86)$(tput bold)
        PS1='${debian_chroot:+($debian_chroot)}${VERDE_ABACATE}\u${YELLOW} no ${VERDE_LIMAO}\h ${YELLOW}em ${RED}\w ${AZUL_TURQUESA}$(parse_git_branch)${NO_COLOR}\n\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
