return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 50,
        relativenumber = true,
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    vim.cmd([[
      highlight NvimTreeNormal guibg=NONE guifg=#839496
      highlight NvimTreeEndOfBuffer guibg=NONE
      highlight NvimTreeVertSplit guibg=NONE guifg=#073642
      highlight NvimTreeFolderName guifg=#859900
      highlight NvimTreeFolderIcon guifg=#859900
      highlight NvimTreeOpenedFolderName guifg=#2aa198 gui=bold
      highlight NvimTreeEmptyFolderName guifg=#586e75
      highlight NvimTreeRootFolder guifg=#b58900 gui=bold
      highlight NvimTreeGitDirty guifg=#b58900
      highlight NvimTreeGitNew guifg=#859900
      highlight NvimTreeGitDeleted guifg=#dc322f
      highlight NvimTreeSpecialFile guifg=#6c71c4 gui=underline
      highlight NvimTreeIndentMarker guifg=#586e75
      highlight NvimTreeImageFile guifg=#d33682
      highlight NvimTreeSymlink guifg=#2aa198
      highlight NvimTreeCursorLine guibg=#073642
      highlight NvimTreeExecFile guifg=#859900 gui=bold
    ]])

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
  end,
}
