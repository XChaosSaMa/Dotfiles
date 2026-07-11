# ==============================================================================
# 0. INICIO AUTOMÁTICO DE HYPRLAND
# ==============================================================================
# Comprobamos si estamos en la tty1 y si es una shell de login interactiva
if [[ "$(tty)" == "/dev/tty1" && $- == *i* ]]; then
    # Variables críticas para exprimir tu RTX 4060 en Wayland
    export GB_NAMES="nvidia-drm"
    export __GLX_VENDOR_LIBRARY_NAME="nvidia"
    export ELECTRON_OZONE_PLATFORM_HINT="wayland"
    
    exec start-hyprland
fi

# ==============================================================================
# ~/.bashrc Original
# ==============================================================================

# 1. EVITAR EJECUCIÓN NO INTERACTIVA
# Si no estamos en una sesión interactiva, no hacer nada
[[ $- != *i* ]] && return

# 2. COLORES EN LA TERMINAL (PROMPT)
PS1='\[\e[1;32m\]\u\[\e[0m\]@\[\e[1;34m\]\h\[\e[0m\]:\[\e[1;36m\]\w\[\e[0m\]\$ '

# Habilitar colores para ls, grep y diff
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

# 3. CONTROL DEL HISTORIAL (INTELIGENTE)
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
shopt -s cmdhist

# 4. OPCIONES DE CALIDAD DE VIDA (SHOPT)
shopt -s autocd
shopt -s globstar
shopt -s cdspell

# 5. ALIASES ÚTILES Y MINIMALISTAS
alias ll='ls -hal'
alias vi='nvim'
alias vim='nvim'
