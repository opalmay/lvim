lvim.plugins = {
  {
    "nvim-lua/plenary.nvim",
    build = "GIT_DIR=~/.local/share/lunarvim/site/pack/lazy/opt/plenary.nvim/.git git checkout fix-path-expend"
  },
  {
    "jvgrootveld/telescope-zoxide",
  },
  { "catppuccin/nvim" },
  {
    "f-person/git-blame.nvim",
    cmd = "GitBlameToggle"
  },
  {
    "ThePrimeagen/harpoon",
    lazy = true
  },
  {
    "opalmay/vim-smoothie",
  },
  {
    "opalmay/neoscroll.nvim",
    branch = "feat-scroll-past-bottom",
    event = "BufRead"
  },
  -- { "opalmay/neoscroll.nvim" },
  -- { "baskerville/vim-sxhkdrc" },
  -- { "j-hui/fidget.nvim" },
  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre"
  },
  {
    "stevearc/stickybuf.nvim",
    event = "BufRead"
  },
  {
    "rbong/vim-buffest",
    event = "BufRead"
  },
  -- { "junegunn/vim-slash" }, Maybe fork this?
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end,
    event = "BufRead",
  },

  -- { "tpope/vim-repeat" },
  -- " }svermeulen/vim-macrobatics",

  -- cmp:
  {
    "hrsh7th/cmp-cmdline",
    event = "CmdLineEnter"
  },
  -- "rcarriga/cmp-dap",

  -- treesitter:
  { "andymass/vim-matchup" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  { "RRethy/nvim-treesitter-textsubjects" },

  -- dap
  {
    "theHamsta/nvim-dap-virtual-text",
    event = "BufRead"
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python"
  },

  -- run stuff
  {
    "michaelb/sniprun",
    build = 'bash ./install.sh',
    cmd = "SnipRun"
  },
  {
    "is0n/jaq-nvim",
    config = function()
      require("user.jaq")
    end,
    cmd = "Jaq"
  },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle"
  },

  -- { "folke/noice.nvim" },
  -- { "MunifTanjim/nui.nvim" },

  -- " }phaazon/hop.nvim",
  {
    "ggandor/leap.nvim",
    event = "BufRead"
  },

  -- jump list:
  {
    "opalmay/vim-EnhancedJumps",
    event = "BufRead",
    dependencies = {
      "inkarkat/vim-ingo-library"
    }
  },
  -- { "petertriho/nvim-scrollbar" },
  -- { "kevinhwang91/nvim-hlslens" },
  -- { "haya14busa/vim-asterisk" },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
    event = "BufRead",
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
    cmd = "MarkdownPreview"
  },

  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter"
  },
  {
    "Vimjas/vim-python-pep8-indent",
    ft = "python",
    event = "BufRead"
  },
  -- {
  --   "s1n7ax/nvim-comment-frame",
  --   config = function()
  --     require("nvim-comment-frame").setup({
  --       keymap = "<C-0>",
  --       multiline_keymap = "<C-9>",
  --     })
  --   end,
  --   cmd = "CommentFrame",
  -- },
  {
    "gbprod/yanky.nvim",
    event = "BufRead",
    config = function()
      require("user.yanky")
    end,
  },
  {
    "gbprod/substitute.nvim",
    event = "BufRead",
    config = function()
      require("user.substitute")
    end,
  },
  {
    "gbprod/stay-in-place.nvim",
    config = function()
      require("stay-in-place").setup()
    end,
    event = "BufRead",
  },
  {
    "klen/nvim-config-local",
    config = function()
      require('config-local').setup()
    end,
    -- event = "BufRead",
  },
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood"
  },
  {
    "MTDL9/vim-log-highlighting",
    ft = "log"
  },
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle"
  },
  {
    "zbirenbaum/copilot.lua",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function()
        require("user.copilot")
      end, 100)
    end,
  },

  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
    event = "InsertEnter",
  },
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    event = "InsertEnter",
  },
  {
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    },
    cmd = "ChatGPT"
  },
}
lvim.builtin.bufferline.active = false
