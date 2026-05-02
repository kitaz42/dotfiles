#!/bin/bash
PACKAGES=(
	 hyprland
    waybar
    kitty
    zsh
    swww
    fastfetch
    nano
    git 
)
echo "Установка софта..."

	for pkg in "${PACKAGES[@]}"; do
	if pacman -Qi "$pkg" &> /dev/null; then
        echo "$pkg уже установлен"
    else
        echo "Устанавливаю $pkg..."
        sudo pacman -S --noconfirm "$pkg"
    fi
done

DOT_DIR=$(pwd)

mkdir -p ~/.config
ln -sf "$DOT_DIR/hypr" ~/.config/
ln -sf "$DOT_DIR/kitty" ~/.config/
ln -sf "$DOT_DIR/waybar" ~/.config/
ln -sf "$DOT_DIR/.zshrc" ~/.zshrc
echo "Конфиги связаны."
