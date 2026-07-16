# 🌌 My Dotfiles

Welcome to my personal configuration files! This repository contains my daily-driver setups designed for an **ultra-minimal Arch Linux** installation. 

The core philosophy of this setup is extreme efficiency: keeping the package count as low as possible and avoiding unnecessary dependencies while maintaining a highly functional, beautiful, and modern Wayland-based workflow.

---

## 🖥️ System Specs & Environment

Here is a quick overview of the main components driving this setup:

* **Window Manager:** [Hyprland](https://hyprland.org/) (Dynamic tiling Wayland compositor)
* **Terminal Emulator:** [Kitty](https://sw.kovidgoyal.net/kitty/)
* **Status Bar:** [Waybar](https://github.com/Alexays/Waybar)
* **Application Launcher:** [Fuzzel](https://codeberg.org/dnkl/fuzzel) (Wayland-native runner)
* **Image Viewer:** [imv](https://github.com/eunuchs/imv)
* **Media Player:** [mpv](https://mpv.io/)
* **Shell:** Fish (configured in `~/.config/fish/config.fish`)

---

## 📸 Screenshots

| Clean (Empty) | Dirty (Workspaces Active) |
| :---: | :---: |
| ![Clean Setup](path/to/screenshot1.png) | ![Dirty Setup](path/to/screenshot2.png) |

---

## ⚙️ Installation

> [!WARNING]
> Back up your existing configuration files inside `~/.config/` before proceeding with the installation.

### 1. Clone the repository
```bash
git clone [https://github.com/YOUR_USERNAME/Dotfiles.git](https://github.com/YOUR_USERNAME/Dotfiles.git) ~/Dotfiles
