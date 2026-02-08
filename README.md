# My Dotfiles

Personal development environment configuration.

## Stack

- **Terminal**: Alacritty
- **Shell**: Zsh + Oh My Zsh
- **Editor**: Neovim + LazyVim
- **AI**: Claude (Avante) + Codeium
- **Languages**: C++, Python, Rust

## Quick Setup (New Machine)
```bash
# 1. Clone dotfiles
git clone https://github.com/pfilimonov/dotfiles.git ~/dotfiles

# 2. Run install script
cd ~/dotfiles
./install.sh

# 3. Set up API keys
echo 'export ANTHROPIC_API_KEY="your-key"' >> ~/.zshrc

# 4. Restart terminal
```

## Manual Installation

### Alacritty (if you want to use it)
```bash
ln -sf ~/dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
```

- Note: To use Alacritty follow their [installation guide](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)

### Neovim
```bash
ln -sf ~/dotfiles/nvim ~/.config/nvim
```

### Zsh
```bash
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
```

## Components

### Neovim Plugins
- LazyVim (base)
- Avante.nvim (Claude AI)
- Codeium (AI completion)
- clangd (C++ LSP)
- pyright (Python LSP)

### Key Bindings

**Neovim:**
- `Space` - Leader key
- `Space e` - File explorer
- `Space f f` - Find files
- `Space c f` - Format code
- `Space a a` - Claude chat
- `Enter` - Accept Codeium

**Terminal:**
- `Ctrl+Shift+C/V` - Copy/Paste

## Updating
```bash
cd ~/dotfiles
git pull
./install.sh
```

## Troubleshooting

### Neovim plugins not loading
```bash
nvim
:Lazy sync
```

### Codeium not working
```bash
nvim
:Codeium Auth
```
