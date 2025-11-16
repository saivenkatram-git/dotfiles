return {
  "supermaven-inc/supermaven-nvim",
  event = "InsertEnter",
  cmd = {
    "SupermavenUseFree",
    "SupermavenUsePro",
  },
  opts = {
    keymaps = {
      accept_suggestion = "<Tab>",
      clear_suggestion = "<C-]>",
      accept_word = "<C-j>",
    },
    color = {
      suggestion_color = "#808080",
      cterm = 244,
    },
    disable_inline_completion = false, -- Shows inline AI suggestions
    ignore_filetypes = { "bigfile", "snacks_input", "snacks_notif" },
  },
}
