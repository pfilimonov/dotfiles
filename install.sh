#!/bin/bash

set -e # Выход при ошибке

DOTFILES_DIR="$HOME/dotfiles"

echo "🚀 Setting up dotfiles..."

# Цвета для вывода
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Функция для создания симлинка
link_file() {
  local src=$1
  local dest=$2

  if [ -e "$dest" ]; then
    echo -e "${YELLOW}⚠️  $dest already exists, backing up...${NC}"
    mv "$dest" "$dest.backup.$(date +%Y%m%d_%H%M%S)"
  fi

  ln -sf "$src" "$dest"
  echo -e "${GREEN}✅ Linked: $dest${NC}"
}

# 1. Установка пакетов
echo "📦 Installing packages..."
sudo apt update
sudo apt install -y \
  neovim \
  zsh \
  git \
  curl \
  wget \
  tmux \
  ripgrep \
  fd-find \
  nodejs \
  npm \
  build-essential \
  cmake \
  xclip \
  clang \
  clangd

# Симлинк для fd
sudo ln -sf $(which fdfind) /usr/local/bin/fd 2>/dev/null || true

# 2. Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "📥 Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 3. Линкуем конфиги
echo "🔗 Linking config files..."

# Alacritty
link_file "$DOTFILES_DIR/alacritty" "$HOME/.config/alacritty"

# Neovim
link_file "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"

# Zsh
link_file "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"

# 4. Шрифты
echo "🔤 Installing Nerd Fonts..."
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts

if [ ! -d "JetBrainsMono" ]; then
  wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip
  unzip -q JetBrainsMono.zip -d JetBrainsMono
  rm JetBrainsMono.zip
  fc-cache -fv
fi

cd "$DOTFILES_DIR"

# 5. Установка Rust (для Alacritty если нужно собирать)
if ! command -v rustc &>/dev/null; then
  echo "🦀 Installing Rust..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
  source "$HOME/.cargo/env"
fi

# 6. Смена shell на zsh
if [ "$SHELL" != "$(which zsh)" ]; then
  echo "🐚 Changing shell to zsh..."
  chsh -s $(which zsh)
  echo -e "${YELLOW}⚠️  Please log out and log back in for shell change to take effect${NC}"
fi

# Tmux
mkdir -p ~/.tmux/plugins
ln -sf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/tmux/tpm ~/.tmux/plugins/tpm

echo ""
echo -e "${GREEN}✨ Dotfiles setup complete!${NC}"
echo ""
echo "Next steps:"
echo "1. Restart your terminal"
echo "2. Open nvim - plugins will auto-install"
echo "3. Create ~/.zshrc.local and set your ANTHROPIC_API_KEY there"
echo "4. Log in in Codium via :Codium Auth to start AI-autocomplete"
echo "5. Optionally build and install Alacritty terminal using instruction:"
echo "    - https://github.com/alacritty/alacritty/blob/master/INSTALL.md"
