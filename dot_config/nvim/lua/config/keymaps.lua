-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Position cursor at the middle of the screen after scrolling half page
vim.keymaps.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Map Ctrl+b in insert mode to delete to the end of the word without leaving insert mode
vim.keymap.set("i", "<C-b>", "<C-o>de")

-- REQUIRED

local oil = require("oil")
oil.setup()
-- REQUIRED

-----  OIL -----
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" })

-- Delete all buffers but the current one --
vim.keymap.set(
  "n",
  "<leader>bq",
  '<Esc>:%bdelete|edit #|normal`"<Return>',
  { desc = "Delete other buffers but the current one" }
)
