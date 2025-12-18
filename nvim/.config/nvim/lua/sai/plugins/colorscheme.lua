-- return {
--   "craftzdog/solarized-osaka.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     return {
--       transparent = true,
--       vim.cmd.colorscheme("solarized-osaka"),
--     }
--   end,
-- }

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {
--     style = "night",
--   },
--   config = function(_, opts)
--     local tokyonight = require("tokyonight")
--     tokyonight.setup(opts)
--     tokyonight.load()
--   end,
-- }
--
return {
  "morhetz/gruvbox",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
  },
  config = function(_, opts)
    vim.cmd.colorscheme("gruvbox")
  end,
}
