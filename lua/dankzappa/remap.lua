vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {})
vim.keymap.set("n", "<leader>to", ":NvimTreeOpen<CR>", {})
vim.keymap.set("n", "<leader>tc", ":NvimTreeClose<CR>", {})
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>", {})
vim.keymap.set("n", "<leader>tr", ":NvimTreeRefresh<CR>", {})
vim.keymap.set("n", "<leader>tt", ":NvimTreeFindFile<CR>", {})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
