return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  -- Telescope + Telescope File Explorer
  use({
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  })

  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  -- Colorschemes
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

 -- Treesitter + Treesitter Context
  use({
      'nvim-treesitter/nvim-treesitter',
	  run = function()
	    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		ts_update()
	  end,
  })
  use("nvim-treesitter/nvim-treesitter-context");

 -- Trouble
  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
          }
      end,
  }) 

  -- WhichKey keybindings help
  use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

  use({
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  })
  use({
    'ldelossa/gh.nvim',
    requires = { { 'ldelossa/litee.nvim' } }
  })
  use("jose-elias-alvarez/null-ls.nvim")
  use("lukas-reineke/lsp-format.nvim")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("nvim-tree/nvim-web-devicons")
end)
