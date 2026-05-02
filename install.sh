#!/bin/bash
DOT_DIR=$(pwd)
ln -sf "$DOT_DIR/hypr" ~/.config/
ln -sf "$DOT_DIR/kitty" ~/.config/
ln -sf "$DOT_DIR/waybar" ~/.config/
ln -sf "$DOT_DIR/.zshrc" ~/.zshrc
echo "Конфиги связаны."
