# 🖥️ dotfiles

My personal terminal setup for macOS — featuring Zsh, Oh My Zsh, Powerlevel10k, Neovim, and tmux.

## 📸 Preview

<!-- Screenshot buraya gelecek -->

## ✨ What's included

- **Zsh** + Oh My Zsh
- **Powerlevel10k** — prompt theme
- **Catppuccin Mocha** — color scheme for iTerm2
- **zsh-autosuggestions** — fish-like suggestions
- **zsh-syntax-highlighting** — command highlighting
- **Neovim** — with Lazy.nvim, nvim-tree, Telescope, Lualine
- **tmux** — terminal multiplexer (auto-starts on launch)
- **fastfetch** — system info display

## 📁 File locations

| File | Location |
|------|----------|
| `.zshrc` | `~/.zshrc` |
| `.p10k.zsh` | `~/.p10k.zsh` |
| `nvim/init.lua` | `~/.config/nvim/init.lua` |

## 🚀 Installation

### 1. Clone the repo
\```bash
git clone https://github.com/Bedran0/dotfiles.git ~/dotfiles
\```

### 2. Install dependencies
\```bash
# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Neovim, tmux, fastfetch
brew install neovim tmux fastfetch

# Nerd Font
brew install font-meslo-lg-nerd-font
\```

### 3. Copy config files
\```bash
cp ~/dotfiles/.zshrc ~/.zshrc
cp ~/dotfiles/.p10k.zsh ~/.p10k.zsh
mkdir -p ~/.config/nvim
cp ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
source ~/.zshrc
\```

### 4. iTerm2 color scheme
- Open iTerm2 → `Cmd+,` → Profiles → Colors → Color Presets → Import
- Import `Catppuccin-Mocha.itermcolors` from [catppuccin/iterm](https://github.com/catppuccin/iterm)

### 5. Set font
- iTerm2 → `Cmd+,` → Profiles → Text → Font → `MesloLGS Nerd Font`
