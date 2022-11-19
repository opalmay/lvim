lvim.plugins = {
  { "catppuccin/nvim" },
  { "f-person/git-blame.nvim" },
  { "ThePrimeagen/harpoon" },
  -- { "karb94/neoscroll.nvim" },
  { "opalmay/neoscroll.nvim", branch = "feat-scroll-past-bottom" },
  { "baskerville/vim-sxhkdrc" },
  { "j-hui/fidget.nvim" },
  { "nvim-pack/nvim-spectre" },
  { "stevearc/stickybuf.nvim" },
  { "rbong/vim-buffest" },
  { "junegunn/vim-slash" },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  { "tpope/vim-repeat" },
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

  { "folke/trouble.nvim" },

  -- " }folke/noice.nvim",
  -- " }MunifTanjim/nui.nvim"

  -- " }phaazon/hop.nvim",
  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").add_default_mappings()
    end,
  },

  -- jump list:
  { "inkarkat/vim-EnhancedJumps" },
  { "inkarkat/vim-ingo-library" },

  -- " }wfxr/minimap.vim",
  { "petertriho/nvim-scrollbar" },
  -- { "kevinhwang91/nvim-hlslens" },
  -- " }norcalli/nvim-colorizer.lua"
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
    ft = { "md" },
  },

  -- {
  --   "tpope/vim-dadbod",
  --   opt = true,
  --   requires = {
  --     "kristijanhusak/vim-dadbod-ui",
  --     "kristijanhusak/vim-dadbod-completion",
  --   },
  --   config = function()
  --     require("user.dadbod").setup()
  --   end,
  --   cmd = { "DBUIToggle", "DBUI", "DBUIAddConnection", "DBUIFindBuffer", "DBUIRenameBuffer", "DBUILastQueryInfo" },
  -- },
  { "Issafalcon/lsp-overloads.nvim" },
  { "Vimjas/vim-python-pep8-indent" },
  { "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim" },
  { "AckslD/nvim-neoclip.lua",
    -- requires = {
    --   { 'kkharji/sqlite.lua', module = 'sqlite' }
    -- },
  },
  { "s1n7ax/nvim-comment-frame" }
  -- { "smjonas/live-command.nvim" }
  -- {
  --   "narutoxy/dim.lua",
  --   config = function()
  --     require('dim').setup({})
  --   end
  -- }
}
lvim.builtin.bufferline.active = false
-- lvim.builtin.breadcrumbs.active = false
