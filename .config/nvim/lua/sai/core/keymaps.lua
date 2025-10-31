vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<esc>", { desc = "exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<cr>", { desc = "clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<c-a>", { desc = "increment number" }) -- increment
keymap.set("n", "<leader>-", "<c-x>", { desc = "decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<c-w>v", { desc = "split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<c-w>s", { desc = "split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<c-w>=", { desc = "make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<cr>", { desc = "close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<cr>", { desc = "open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<cr>", { desc = "close current tab" }) -- close current tab
keymap.set("n", "<tab>", "<cmd>tabn<cr>", { desc = "go to next tab" }) --  go to next tab
keymap.set("n", "<s-tab>", "<cmd>tabp<cr>", { desc = "go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<cr>", { desc = "open current buffer in new tab" }) --  move current buffer to new tab
