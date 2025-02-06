local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "nvim-treesitter/nvim-treesitter",

    {
        "VonHeikemen/lsp-zero.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
    },

    "nvim-telescope/telescope.nvim",

    'ThePrimeagen/harpoon',

    'm4xshen/autoclose.nvim',

    'mbbill/undotree',

    'tpope/vim-fugitive',

    "catppuccin/nvim",

    "andrewferrier/wrapping.nvim",

    'nvim-tree/nvim-tree.lua',

    'nvim-tree/nvim-web-devicons',

    'nvim-lualine/lualine.nvim',


    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',

})
