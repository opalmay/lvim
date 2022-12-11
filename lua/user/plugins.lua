lvim.plugins = {
  { "jvgrootveld/telescope-zoxide" },
  { "catppuccin/nvim" },
  { "f-person/git-blame.nvim" },
  { "ThePrimeagen/harpoon" },
  { "opalmay/vim-smoothie" },
  -- { "psliwka/vim-smoothie" },
  -- { "karb94/neoscroll.nvim" },
  -- { "opalmay/neoscroll.nvim", branch = "feat-scroll-past-bottom" },
  -- { "opalmay/neoscroll.nvim" },
  -- { "baskerville/vim-sxhkdrc" },
  -- { "j-hui/fidget.nvim" },
  { "nvim-pack/nvim-spectre" },
  { "stevearc/stickybuf.nvim" },
  { "rbong/vim-buffest" },
  -- { "junegunn/vim-slash" },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  -- { "tpope/vim-repeat" },
  -- " }svermeulen/vim-macrobatics",

  -- cmp:
  { "hrsh7th/cmp-cmdline" },
  -- "rcarriga/cmp-dap",

  -- treesitter:
  { "andymass/vim-matchup" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  { "RRethy/nvim-treesitter-textsubjects" },

  -- dap
  { "theHamsta/nvim-dap-virtual-text" },
  { "mfussenegger/nvim-dap-python" },

  -- run stuff
  { "michaelb/sniprun", run = 'bash ./install.sh' },
  { "is0n/jaq-nvim" },

  -- { "folke/trouble.nvim" },

  -- { "folke/noice.nvim" },
  -- { "MunifTanjim/nui.nvim" },

  -- " }phaazon/hop.nvim",
  -- {
  --   "ggandor/leap.nvim",
  --   config = function()
  --     require("leap").add_default_mappings()
  --   end,
  -- },

  -- jump list:
  { "opalmay/vim-EnhancedJumps" },
  { "inkarkat/vim-ingo-library" },

  -- { "petertriho/nvim-scrollbar" },
  -- { "kevinhwang91/nvim-hlslens" },
  -- { "haya14busa/vim-asterisk" },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- { "Issafalcon/lsp-overloads.nvim" },
  { "ray-x/lsp_signature.nvim" },
  { "Vimjas/vim-python-pep8-indent" },
  { "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim" },
  { "s1n7ax/nvim-comment-frame" },
  -- { "svermeulen/vim-subversive" }
  -- { "smjonas/live-command.nvim" }
  -- {
  --   "narutoxy/dim.lua",
  --   config = function()
  --     require('dim').setup({})
  --   end
  -- }
  { "gbprod/yanky.nvim" },
  { "gbprod/substitute.nvim" },
  {
    "klen/nvim-config-local",
    config = function()
      require('config-local').setup()
    end
  },
  { "ThePrimeagen/vim-be-good" }
}
lvim.builtin.bufferline.active = false
-- lvim.builtin.breadcrumbs.active = true
