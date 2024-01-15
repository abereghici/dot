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

#### dependency for other plugins

- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use

#### preferred colorscheme

- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

#### navigating between neovim windows and tmux

- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

#### fuzzy finder

- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder


#### marking files with harpoon

- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)

#### Treesitter Syntax Highlighting, Autoclosing

- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Treesitter configuration
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Autoclose tags

