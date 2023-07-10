return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  -- Shoutout to the primeagen <3
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    -- or                            , branch = '0.1.x',
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  -- Colorschemes
  use({
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end,
  })
  use({ "bluz71/vim-nightfly-colors", as = "nightfly" })

  -- Treesitter + Treesitter Context
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })
  use("nvim-treesitter/nvim-treesitter-context")

  -- WhichKey keybindings help
  use({
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  })

  -- GH Cli
  use({
    "ldelossa/gh.nvim",
    requires = { { "ldelossa/litee.nvim" } },
  })

  -- Tab bar
  use("nvim-tree/nvim-web-devicons") -- OPTIONAL: for file icons
  use("lewis6991/gitsigns.nvim")     -- OPTIONAL: for git status
  use("romgrk/barbar.nvim")

  -- Praise tpope
  use("tpope/vim-commentary")
  use("tpope/vim-surround")
  use("tpope/vim-fugitive")

  -- LSP stuff
  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    },
  })
  use("jose-elias-alvarez/null-ls.nvim")
  use("lukas-reineke/lsp-format.nvim")
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup({})
    end,
  })

  use("preservim/nerdtree")
  use("Raimondi/delimitMate")
  use("mbbill/undotree")
  use("github/copilot.vim")
end)
