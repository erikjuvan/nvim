vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'wbthomason/packer.nvim',

    -- TJ created lodash of neovim
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
    'nvim-telescope/telescope.nvim',

    -- Nerdtree
    'preservim/nerdtree',

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'
    },
    -- Colorschemes
    'tomasiser/vim-code-dark',
    --use("gruvbox-community/gruvbox")
    --use("folke/tokyonight.nvim")

    -- cmp plugins
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    --use("hrsh7th/cmp-cmdline")
    'hrsh7th/cmp-nvim-lsp',

    -- LSP
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    {
        'akinsho/toggleterm.nvim', tag = '*',
        config = function()
            require("toggleterm").setup()
        end
    }
})