vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {})
vim.keymap.set("n", "<leader>to", ":NvimTreeOpen<CR>", {})
vim.keymap.set("n", "<leader>tc", ":NvimTreeClose<CR>", {})
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>", {})
vim.keymap.set("n", "<leader>tr", ":NvimTreeRefresh<CR>", {})
vim.keymap.set("n", "<leader>tt", ":NvimTreeFindFile<CR>", {})

