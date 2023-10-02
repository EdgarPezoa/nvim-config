local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use "wbthomason/packer.nvim"
    use 'folke/tokyonight.nvim'
    use 'nvim-treesitter/nvim-treesitter' -- (REQUIRED) Added color to languages
    use "nvim-treesitter/nvim-treesitter-context";
    use "ThePrimeagen/harpoon" -- (REQUIRED) marks files for easy navigation
    use "mbbill/undotree"      -- (REQUIRED) see undo tree
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }                                                -- (REQUIRED) seasy fuzzy-finder
    use "nvim-telescope/telescope-file-browser.nvim" -- (REQUIRED) file finder ui
    use "tpope/vim-fugitive"                         -- (REQUIRED) Git plugging
    use 'nvim-lualine/lualine.nvim'                  -- (REQUIRED) Nvim bottom status bar
    use 'nvim-lua/plenary.nvim'                      -- (REQUIRED) Common utilities for some pluggins
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'L3MON4D3/LuaSnip' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'rafamadriz/friendly-snippets' }
        }
    } -- (REQUIRED) LSP and Autocompletion
    use 'windwp/nvim-ts-autotag'      -- (REQUIRED) Autotag
    use 'nvim-tree/nvim-web-devicons' -- (REQUIRED) nvim tree dev icons
    use 'akinsho/nvim-bufferline.lua' -- (OPTIONAL) nvim enable tabs
    use { 'numToStr/Comment.nvim',
        requires = {
            'JoosepAlviste/nvim-ts-context-commentstring'
        }
    }                                 -- (REQUIRED) fast comment pluging
    use 'norcalli/nvim-colorizer.lua' -- (REQUIRED) Color highlighter #000
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    }) -- (REQUIRED) Markdown previewer

    use 'windwp/nvim-autopairs' -- (REQUIRED) Autopair
    use 'lewis6991/gitsigns.nvim' -- (REQUIRED) Adds git signs
    use 'jose-elias-alvarez/null-ls.nvim' -- (REQUIRED) Enables formatting
    use 'onsails/lspkind-nvim' -- (REQUIRED) vscode-like pictograms
    use 'mattn/emmet-vim' -- (REQUIRED) auto completion tag emmet
    use "sindrets/diffview.nvim" -- (REQUIRED) git diff views

end)
