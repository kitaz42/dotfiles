#!/bin/bash
DOT_DIR=$(pwd)
ln -sf "$DOT_DIR/hypr" ~/.config/
ln -sf "$DOT_DIR/.zshrc" ~/.zshrc
echo "Конфиги связаны."
