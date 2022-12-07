-- you must install packer first otherwise there will be errors
return require("packer").startup(
    function(use)
        use("wbthomason/packer.nvim")

        -- TJ created lodash of neovim
        use("nvim-lua/plenary.nvim")
        use("nvim-lua/popup.nvim")
        use("nvim-telescope/telescope.nvim")

        -- Nerdtree
        use("preservim/nerdtree")

        -- Treesitter
        use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
        --use("nvim-treesitter/playground")
        --use("romgrk/nvim-treesitter-context")

        -- Colorschemes
        use("gruvbox-community/gruvbox")
        use("folke/tokyonight.nvim")
        --use({"catppuccin/nvim", as = "catppuccin"})
        --use({"rose-pine/neovim", as = "rose-pine"})

        -- Fugitive - git plugin
        --use("tpope/vim-fugitive")
    
        -- Neovim statusline written in Lua
        --use({
        --    'nvim-lualine/lualine.nvim',
        --    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        --})
    
        -- trying copilot for 1 week
        --use("github/copilot.vim")
        --use("github/copilot.vim")
        --use("zbirenbaum/copilot.lua");
        --use({
        --    "zbirenbaum/copilot-cmp",
        --    after = {"copilot.lua"},
        --    config = function ()
        --        require("copilot_cmp").setup()
        --    end
        --});
    
        -- All the things
        --use("neovim/nvim-lspconfig")
        --use("hrsh7th/cmp-nvim-lsp")
        --use("hrsh7th/cmp-buffer")
        --use("hrsh7th/nvim-cmp")
        --use{"tzachar/cmp-tabnine", run = "./install.sh", requires = 'hrsh7th/nvim-cmp'}
        --use("onsails/lspkind-nvim")
        --use("nvim-lua/lsp_extensions.nvim")
        --use("glepnir/lspsaga.nvim")
        --use("simrat39/symbols-outline.nvim")
        --use("L3MON4D3/LuaSnip")
        --use("saadparwaiz1/cmp_luasnip")

        -- Primeagen doesn't create lodash
        --use("ThePrimeagen/git-worktree.nvim")
        --use("ThePrimeagen/harpoon")
        --use("ThePrimeagen/refactoring.nvim")

        --use("mbbill/undotree")

        --use("mfussenegger/nvim-dap")
        --use("rcarriga/nvim-dap-ui")
        --use("theHamsta/nvim-dap-virtual-text")

        --use("ranjithshegde/ccls.nvim")
    end
)
