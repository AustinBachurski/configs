vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gvzz")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gvzz")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("v", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>p", "\"+p")

vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<C-y>", "gg\"+yG")

vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim .keymap.set("n", "<C-d>", "<C-d>zz")
vim .keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>/", vim.cmd.nohl)
