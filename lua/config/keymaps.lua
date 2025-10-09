-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- ESC to jj
-- keymap.set("i", "jj", "<Esc>", opts)
keymap.set({ "i", "v", "n" }, "nn", "<Esc>", opts)
-- keymap.set({ "i", "v", "n" }, "jk", "<Esc>", opts)

-- Prevent deleting from copying
keymap.set({ "n", "v" }, "dd", '"_dd', opts)
keymap.set({ "n", "v" }, "d", '"_d', opts)
keymap.set({ "n", "v" }, "D", '"_D', opts)
keymap.set({ "n", "v" }, "x", '"_x', opts)
keymap.set({ "n", "v" }, "X", '"_X', opts)
keymap.set({ "n", "v" }, "c", '"_c', opts)
keymap.set({ "n", "v" }, "C", '"_C', opts)

-- cut
keymap.set("n", "<leader>dd", "dd", opts)
keymap.set("v", "<leader>dd", "dd<Esc>", opts)
keymap.set("n", "<leader>d", "d", opts)
keymap.set("v", "<leader>d", "d", opts)

keymap.set("n", "<leader>df", function()
  vim.cmd([[
    windo if &diff | diffoff | else | diffthis | endif
  ]])
end, { desc = "Toggle Diff Mode" })

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- join lines without space
keymap.set("n", "J", "gJ", opts)

-- Split window
-- keymap.set("n", "ss", ":split<Return>", opts)
-- keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Pick a buffer
keymap.set("n", "<Leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", {})
keymap.set("n", "<Leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", {})
keymap.set("n", "<Leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", {})
keymap.set("n", "<Leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", {})
keymap.set("n", "<Leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", {})
keymap.set("n", "<Leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", {})
keymap.set("n", "<Leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", {})
keymap.set("n", "<Leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", {})
keymap.set("n", "<Leader>9", "<Cmd>BufferLineGoToBuffer -1<CR>", {})

-- Copy buffer path
keymap.set("n", "<Leader>bc", "<Cmd>:let @+ = expand('%:p')<CR>", { desc = "Copy Buffer Path" })

-- Moving text
-- Move text up and down
keymap.set("n", "<A-Up>", "<Esc>:m .-2<CR>", opts)
keymap.set("n", "<A-Down>", "<Esc>:m .+1<CR>", opts)
keymap.set("v", "<A-Up>", ":m .-2<CR>", opts)
keymap.set("v", "<A-Down>", ":m .+1<CR>", opts)
keymap.set("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)
keymap.set("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
-- keymap.set("n", "<C-k>", "<Esc>:m .-2<CR>", opts)
-- keymap.set("n", "<C-j>", "<Esc>:m .+1<CR>", opts)
-- keymap.set("v", "<C-k>", ":m .-2<CR>", opts)
-- keymap.set("v", "<C-j>", ":m .+1<CR>", opts)
-- keymap.set("x", "<C-k>", ":move '<-2<CR>gv-gv", opts)
-- keymap.set("x", "<C-j>", ":move '>+1<CR>gv-gv", opts)
