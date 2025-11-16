return {
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    return {
      transparent = true,
      vim.cmd.colorscheme("solarized-osaka"),
    }
  end,
}
