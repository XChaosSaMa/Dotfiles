#=============================================================================
#  CONFIGURACIÓN INICIAL & AUTOARRANQUE (Hyprland)
# =============================================================================

if status is-login
    if test (tty) = "/dev/tty1"
        start-hyprland    
    end
end

set -g fish_greeting ""

# =============================================================================
#  VÍAS Y VARIABLES DE ENTORNO
# =============================================================================
fish_add_path ~/.local/bin
fish_add_path ~/bin
set -gx EDITOR nvim

# =============================================================================
#  SINTAXIS CON COLORES "SILVER WOLF" (Hacker / Cyber-Gamer)
# =============================================================================

set -g fish_color_command B983FF --bold       # Comandos: Lavanda/Púrpura digital
set -g fish_color_param 00E5FF                 # Parámetros: Azul cyber/celeste
set -g fish_color_quote FF5E97                 # Comillas/Strings: Rosa neón de alta intensidad
set -g fish_color_redirection D946EF           # Redirecciones y operadores: Magenta
set -g fish_color_error FF3366 --bold          # Errores: Rojo/Rosa alerta
set -g fish_color_end F8FAFC                   # Fin de comandos: Blanco plata/Silver
set -g fish_color_autosuggestion 5B5B7A --italics # Sugerencias: Morado oscuro digital (muy sutil)

# Historial y selección
set -g fish_color_search_match --background=2E1A47
set -g fish_color_selection --background=2E1A47

# =============================================================================
#  PROMPT MINIMALISTA
# =============================================================================

function fish_prompt
    set -l last_status $status
    
    # Paleta calibrada
    set -l sw_pink (set_color FF5E97)          # Rosa neón / Chicle
    set -l sw_lavender (set_color B983FF)      # Lavanda digital
    set -l sw_cyan (set_color 00E5FF)          # Azul cyber brillante
    set -l sw_mint (set_color 00FFCC)          # Verde menta neón
    set -l alert_red (set_color FF3366)        # Rojo / Rosa de error
    set -l normal (set_color normal)

    set -l cwd (prompt_pwd)
    set -l user (whoami)
    set -l host (prompt_hostname)

    # El cursor '❯' se vuelve rojo/rosa si falla, si no, usa el verde menta
    set -l arrow_color $sw_mint
    if test $last_status -ne 0
        set arrow_color $alert_red
    end

    # 1. Salto de línea para que respire la pantalla
    echo ""

    # 2. Primera línea: (en rosa, lavanda y cian)
    echo -s $sw_pink $user $normal "@" $sw_lavender $host " " $sw_cyan $cwd $normal

    # 3. Segunda línea: El cursor listo
    echo -n -s $arrow_color "❯ " $normal
end
