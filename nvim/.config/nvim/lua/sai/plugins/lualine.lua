return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    -- Solarized Osaka colors
    local colors = {
      blue = "#268bd2", -- Solarized blue
      green = "#859900", -- Solarized green
      violet = "#6c71c4", -- Solarized violet
      yellow = "#b58900", -- Solarized yellow
      orange = "#cb4b16", -- Solarized orange
      red = "#dc322f", -- Solarized red
      magenta = "#d33682", -- Solarized magenta
      cyan = "#2aa198", -- Solarized cyan
      fg = "#839496", -- Solarized base0 (foreground)
      bg = "#073642", -- Solarized base02 (background highlight)
      bg_dark = "#002b36", -- Solarized base03 (background)
      inactive_bg = "#073642",
      inactive_fg = "#586e75", -- Solarized base01
    }

    local my_lualine_theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.bg_dark, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg_dark, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.green, fg = colors.bg_dark, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg_dark, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.bg_dark, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg_dark, fg = colors.fg },
      },
      command = {
        a = { bg = colors.yellow, fg = colors.bg_dark, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg_dark, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.red, fg = colors.bg_dark, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg_dark, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.inactive_bg, fg = colors.inactive_fg, gui = "bold" },
        b = { bg = colors.inactive_bg, fg = colors.inactive_fg },
        c = { bg = colors.inactive_bg, fg = colors.inactive_fg },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = colors.orange }, -- Solarized orange for updates
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
