## My Dotfiles

A collection of my personal configuration files for macOS development environment.

## Repository Structure

```
dotfiles/
├── .config/
│   ├── ghostty/          # Ghostty terminal emulator
│   ├── nvim/             # Neovim configuration
│   ├── ohmyposh/         # Oh My Posh prompt theme
├── .tmux.conf            # tmux configuration
├── .zshrc                # Zsh shell configuration
└── zencommit.config.toml # Zen Commit configuration
```

## What's Included

### Terminal & Shell

#### **Ghostty**

Modern terminal emulator configuration located in `.config/ghostty/`

#### **tmux**

Terminal multiplexer with:

- Custom configuration (`.tmux.conf`)
- Catppuccin theme integration
- Status line customizations
- Window and pane management

#### **Zsh**

Shell environment (`.zshrc`) featuring:

- Oh My Zsh framework
- Oh My Posh prompt integration
- Custom aliases and functions
- Path configurations

#### **Oh My Posh**

Beautiful shell prompt with custom theme configuration in `.config/ohmyposh/config.toml`

### Editor

#### ⚡ **Neovim**

Fully configured Neovim setup (`.config/nvim/`) with:

**Core Configuration:**

- Custom keymaps and options
- Lazy.nvim plugin manager
- Organized plugin structure

**Plugin Categories:**

- **LSP & Completion**: Mason, lspconfig, nvim-cmp, Copilot
- **Navigation**: Telescope, nvim-tree, flash.nvim, tmux-navigator
- **Git Integration**: Gitsigns, Lazygit
- **UI Enhancements**: Bufferline, Lualine, Alpha dashboard, Catppuccin colorscheme
- **Code Editing**: Treesitter, autopairs, surround, substitute, formatting/linting
- **Productivity**: Todo-comments, Trouble, auto-session, which-key
- **AI Integration**: AI assistant plugins, Copilot

## Additional Notes

- Neovim configuration uses Lua exclusively
- Plugin management handled by lazy.nvim
- LSP servers managed through Mason
- Consistent keybindings across tmux and Neovim for navigation
