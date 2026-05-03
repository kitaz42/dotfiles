#!/bin/bash
set -e

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
        if sudo pacman -S --noconfirm "$pkg"; then
	echo "Пакет $pkg успешно установлен"
	else 
		echo "Не удалось установить $pkg"
		exit 1
	fi
    fi
done

DOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Удаляем старые пути (если есть)..."
rm -rf ~/.config/hypr
rm -rf ~/.config/kitty
rm -rf ~/.config/waybar

mkdir -p ~/.config
ln -sf "$DOT_DIR/hypr" ~/.config/
ln -sf "$DOT_DIR/kitty" ~/.config/
ln -sf "$DOT_DIR/waybar" ~/.config/
ln -sf "$DOT_DIR/.zshrc" ~/.zshrc
echo "Конфиги связаны."
