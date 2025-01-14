-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'ThePrimeagen/harpoon'

    use 'm4xshen/autoclose.nvim'

    use 'mbbill/undotree'

    -- use {
        -- 'nanozuki/tabby.nvim',
        -- config = function()
            -- local tabby = require('tabby')
            -- tabby.setup({
                -- tabline = function()
                    -- local tabline = require('tabby.presets').active_wins_at_tail
                    -- -- Customize to show only filenames
                    -- return tabline({
                        -- tab_name = function(tabid)
                            -- local winid = vim.api.nvim_tabpage_get_win(tabid)
                            -- local bufid = vim.api.nvim_win_get_buf(winid)
                            -- local filename = vim.api.nvim_buf_get_name(bufid)
                            -- return vim.fn.fnamemodify(filename, ':t') -- Get only the filename
                        -- end
                    -- })
                -- end,
            -- })
        -- end,
    -- }


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "catppuccin/nvim", as = "catppuccin" }

    use {'nvim-treesitter/nvim-treesitter', {as = 'treesitter', run = 'TSUpdate'}}

    use 'nvim-tree/nvim-tree.lua'

    use 'nvim-tree/nvim-web-devicons'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use({
        "andrewferrier/wrapping.nvim",
        config = function()
            require("wrapping").setup()
        end,
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            -- {'williamboman/mason.nvim'},
            -- {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

end)
