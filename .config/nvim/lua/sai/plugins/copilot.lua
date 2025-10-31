return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "BufReadPost",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<Tab>", -- Accept suggestion
          next = "<M-]>", -- Next suggestion (Alt+])
          prev = "<M-[>", -- Previous suggestion (Alt+[)
          dismiss = "<C-]>", -- Dismiss suggestion
        },
      },
      panel = {
        enabled = false, -- Set to true if you want the completion panel
      },
      filetypes = {
        markdown = true,
        help = true,
        gitcommit = true,
        yaml = true,
      },
    },
  },
}
