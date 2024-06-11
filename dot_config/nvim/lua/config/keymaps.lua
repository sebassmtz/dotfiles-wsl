-- Keymaps
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- Map Ctrl+b in insert mode to delete to the end of the word without leaving insert mode
keymap("i", "<C-b>", "<C-o>de")

-- Exit and quit all buffers
keymap("c", "Q", "<cmd>qa!<cr>", opts)

-- REQUIRED
local oil = require("oil")
oil.setup()
-- REQUIRED

-----  OIL -----
keymap("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" })

-- Delete all buffers but the current one --
keymap(
  "n",
  "<leader>bq",
  '<Esc>:%bdelete|edit #|normal`"<Return>',
  { desc = "Delete other buffers but the current one" }
)

-- Disable key mappings in insert mode
keymap("i", "<A-j>", "<Nop>", opts)
keymap("i", "<A-k>", "<Nop>", opts)
-- Disable key mappings in normal mode
keymap("n", "<A-j>", "<Nop>", opts)
keymap("n", "<A-k>", "<Nop>", opts)
-- Disable key mappings in visual block mode
keymap("x", "<A-j>", "<Nop>", opts)
keymap("x", "<A-k>", "<Nop>", opts)
keymap("x", "J", "<Nop>", opts)
keymap("x", "K", "<Nop>", opts)
