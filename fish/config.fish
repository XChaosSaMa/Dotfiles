# Iniciar Hyprland automáticamente si estamos en la TTY1 y no estamos ya en una sesión gráfica
if status is-login
    if test (tty) = "/dev/tty1"
        start-hyprland
    end
end
