#!/bin/bash

# 1. Install Oh My Zsh
# Menambahkan --unattended agar script tidak langsung masuk ke shell zsh baru sebelum selesai
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# 2. Install Zsh Autosuggestions
echo "Cloning Zsh Autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 3. Install Zsh Syntax Highlighting
echo "Cloning Zsh Syntax Highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 4. Konfigurasi .zshrc
# Mengaktifkan plugin di dalam file .zshrc
echo "Updating .zshrc plugins..."
sed -i 's/plugins=(git)/plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

echo "-------------------------------------------"
echo "Setup Selesai! Silakan restart terminal atau ketik 'zsh'."
echo "-------------------------------------------"
