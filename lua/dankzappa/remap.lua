-- define leader as space
vim.g.mapleader = " "

-- make Esc == <C-c>
vim.keymap.set("n", "<Esc>", "<C-c>")
vim.keymap.set("v", "<Esc>", "<C-c>")
vim.keymap.set("x", "<Esc>", "<C-c>")

-- makes ( do nothing
vim.keymap.set("n", "(", "<nop>")
vim.keymap.set("v", "(", "<nop>")
vim.keymap.set("x", "(", "<nop>")

-- opens netrw file tree (disabled by nvim tree)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- nvim tree remaps
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {})
vim.keymap.set("n", "<leader>to", ":NvimTreeOpen<CR>", {})
vim.keymap.set("n", "<leader>tc", ":NvimTreeClose<CR>", {})
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>", {})
vim.keymap.set("n", "<leader>tr", ":NvimTreeRefresh<CR>", {})
vim.keymap.set("n", "<leader>tt", ":NvimTreeFindFile<CR>", {})

-- keep cursor in center while moving up and down by half pages
vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

-- paste without deleting copied text in register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- prefered end of line remap
vim.keymap.set("v", "$", "g_")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- surround selected lines of text with brackets and indent
vim.keymap.set("x", "<leader>[", "dO[<CR><CR>]<C-c>kVp`[V`]>`[V`]o")
vim.keymap.set("x", "<leader>{", "dO{<CR><CR>}<C-c>kVp`[V`]>`[V`]o")

-- surround selected text with  brackets/parentheses
vim.keymap.set("v", "\'", "di\'\'<C-c>P`]l")
vim.keymap.set("v", "\"", "di\"\"<C-c>P`]l")
vim.keymap.set("v", "<A-<>", "di<><C-c>P`]l")
vim.keymap.set("v", "(", "di()<C-c>P`]l")
vim.keymap.set("v", "[", "di[]<C-c>P`]l")
vim.keymap.set("v", "{", "di{}<C-c>P`]l")

-- surround text in line with brackets/parentheses ignoring whitespace at beginning and end
vim.keymap.set("n", "<A-\'>", "^vg_di\'\'<C-c>P`]l")
vim.keymap.set("n", "<A-\">", "^vg_di\"\"<C-c>P`]l")
vim.keymap.set("n", "<A-<>", "^vg_di<><C-c>P`]l")
vim.keymap.set("n", "g(", "^vg_di()<C-c>P`]l")
vim.keymap.set("n", "<A-[>", "^vg_di[]<C-c>P`]l")
vim.keymap.set("n", "<A-{>", "^vg_di{}<C-c>P`]l")

-- keep text selected after indent
vim.keymap.set("v", ">", ">`[v`]o")
vim.keymap.set("v", "<", "<`[v`]o")

-- commenting
vim.keymap.set("n", "<leader>#", "^i# <C-c>j^")
vim.keymap.set("n", "<leader>/", "^i// <C-c>j^")
vim.keymap.set("n", "<leader>-", "^i-- <C-c>j^")

-- uncommenting
vim.keymap.set("n", "<leader>u#", "^xxj^")
vim.keymap.set("n", "<leader>u/", "^xxxj^")
vim.keymap.set("n", "<leader>u-", "^xxxj^")

vim.keymap.set("v", "<leader>y", "\"+y")
