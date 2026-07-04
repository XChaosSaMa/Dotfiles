# 1. EVITAR EJECUCIÓN NO INTERACTIVA
# Si no estamos en una sesión interactiva, no hacer nada
[[ $- != *i* ]] && return

# 2. COLORES EN LA TERMINAL (PROMPT)
# Un prompt limpio, minimalista y con colores para saber dónde estás
PS1='\[\e[1;32m\]\u\[\e[0m\]@\[\e[1;34m\]\h\[\e[0m\]:\[\e[1;36m\]\w\[\e[0m\]\$ '

# Habilitar colores para ls, grep y diff
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

# 3. CONTROL DEL HISTORIAL (INTELIGENTE)
HISTCONTROL=ignoreboth:erasedups # No guardar comandos duplicados ni con espacio delante
HISTSIZE=5000                    # Cuántos comandos recordar en memoria
HISTFILESIZE=10000               # Cuántos comandos guardar en el archivo físico
shopt -s histappend              # Añadir al historial en lugar de sobrescribirlo
shopt -s cmdhist                 # Guardar comandos de varias líneas en una sola entrada

# 4. OPCIONES DE CALIDAD DE VIDA (SHOPT)
shopt -s autocd     # Si escribes solo el nombre de una carpeta, entra en ella sin usar 'cd'
shopt -s globstar   # Permite usar ** para buscar recursivamente (ej: ls **/archivo.txt)
shopt -s cdspell    # Corrige automáticamente pequeños errores ortográficos al usar cd

# 5. ALIASES ÚTILES Y MINIMALISTAS
alias ll='ls -lah'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# Clon de seguridad al borrar o mover archivos importantes
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Actualización rápida en Arch
alias pacup='sudo pacman -Syu'

# 6. AUTOCOMPLETADO AVANZADO DE TABULADOR
# Hacer que el tabulador se comporte de forma más inteligente
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
