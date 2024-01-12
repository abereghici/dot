# Dot Files

# terminal setup

### relevant files

- [.zshrc](.zshrc) - zsh shell configuration (with [powerlevel10k theme](https://github.com/romkatv/powerlevel10k))
- [dracula.itermcolors](dracula.itermcolors) - [dracula](https://draculatheme.com/iterm) color scheme

# tmux setup

- [dracula - theme](https://draculatheme.com/tmux)

### relevant files

- [.tmux.conf](.tmux.conf) - Tmux Configuration File

# neovim setup

### setup requires

- true color terminal like: [iTerm2](https://iterm2.com/)
- [neovim](https://neovim.io/) (version 0.9 or Later)
- [ripgrep](https://github.com/BurntSushi/ripgrep) - for telescope fuzzy finder

```bash
brew install --cask iterm2
```

```bash
brew install neovim
```

```bash
brew install ripgrep
```

## plugins

#### plugin manager

- [folke/lazy.nvim](https://github.com/folke/lazy.nvim) - amazing plugin manager

#### preferred colorscheme

- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

#### navigating between neovim windows and tmux

- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
