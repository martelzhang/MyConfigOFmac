vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", ";", ":")
keymap.set("c", "'", "wq<enter>")
keymap.set("c", "t", "term")
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "<C-h>", "<left>")
keymap.set("i", "<C-j>", "<down>")
keymap.set("i", "<C-k>", "<up>")
keymap.set("i", "<C-l>", "<right>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "jk", "<ESC>")


keymap.set("n", "sh", "<C-w>v")
keymap.set("n", "sv", "<C-w>s")
keymap.set("n", "sc", "<C-w>c") -- close current window
keymap.set("n", "so", "<C-w>o") -- close all others windows
keymap.set("n", "<C-h>", "<C-w><left>")
keymap.set("n", "<C-j>", "<C-w><down>")
keymap.set("n", "<C-k>", "<C-w><up>")
keymap.set("n", "<C-l>", "<C-w><right>")



keymap.set("n", "<leader>nh", ":mohl<CR>")

keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")

keymap.set("n", "<C-.>", ":bnext<CR>")
keymap.set("n", "<C-,>", ":bprevious<CR>")

keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")
keymap.set("n", "L", "2e")
keymap.set("n", "H", "2b")

keymap.set("t", "jk", "<C-\\><C-n>")

keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h")
keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j")
keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k")
keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l")







