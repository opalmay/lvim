lvim.plugins = {
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   cmd = "NvimTreeToggle",
  -- },
  -- {
  --   "nvim-lua/plenary.nvim",
  --   build = "GIT_DIR=~/.local/share/lunarvim/site/pack/lazy/opt/plenary.nvim/.git && (git remote add opalmay https://github.com/opalmay/plenary.nvim && git fetch opalmay) && git checkout fix-path-expend"
  -- },
  -- {
  --   "telescope-undo.nvim"
  -- },
  { "catppuccin/nvim" },
  -- { "Yazeed1s/oh-lucy.nvim" },
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
    event = "BufRead",
  },
  {
    "opalmay/neoscroll.nvim",
    branch = "feat-scroll-past-bottom",
    event = "BufRead"
  },
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
    cmd = "DapVirtualTextToggle"
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python"
  },

  -- run stuff
  -- {
  --   "michaelb/sniprun",
  --   build = 'bash ./install.sh',
  --   cmd = "SnipRun"
  -- },
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
    Lazy = true
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
  },
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
    cmd = "Copilot",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function()
        require("user.copilot")
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
    event = "VimEnter",
  },
  -- {
  --   "tzachar/cmp-tabnine",
  --   build = "./install.sh",
  --   event = "InsertEnter",
  -- },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup()
    end,
    cmd = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" },
  },
  -- {
  --   "folke/noice.nvim",
  -- config = function()
  --   require("noice").setup({
  --     override = {
  --       -- override the default lsp markdown formatter with Noice
  --       ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
  --       -- override the lsp markdown formatter with Noice
  --       ["vim.lsp.util.stylize_markdown"] = true,
  --       -- override cmp documentation with Noice (needs the other options to work)
  --       ["cmp.entry.get_documentation"] = true,
  --     },
  --     presets = {
  --       --ttom_search = true,
  --       command_palette = true,
  --       lsp_doc_border = true,
  --     }
  --   })
  -- end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup()
    end,
    event = "BufRead"
  },
  {
    "roobert/search-replace.nvim",
    config = function()
      require("search-replace").setup()
    end,
    Lazy = true,
  },
  {
    "stevearc/dressing.nvim"
  },
  {
    -- TODO: read docs
    "echasnovski/mini.nvim",
    config = function()
      -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-ai.md
      -- align
      require("mini.ai").setup()
      -- require("mini.align").setup()
      -- require("mini.jump").setup()
    end,
  },
  {
    "DNLHC/glance.nvim",
    config = function()
      require("user.glance")
    end,
    -- event = "BufRead",
    cmd = "Glance"
  },
  -- {
  --   "glepnir/lspsaga.nvim",
  --   config = function()
  --     require("user.lspsaga")
  --   end,
  --   cmd = "Lspsaga",
  -- },
  -- preview commands as you type them
  {
    "smjonas/live-command.nvim",
    config = function()
      require("live-command").setup {
        commands = {
          Norm = { cmd = "norm" },
        },
      }
    end,
    cmd = "Norm"
  },
  -- treesitter queries map popup
  {
    "ziontee113/neo-minimap",
    config = function()
      require("user.neo-minimap")
    end,
  },
  -- lists helper
  {
    "gaoDean/autolist.nvim",
    ft = {
      "markdown",
      "text",
      "tex",
      "plaintex",
    },
    config = function()
      require("user.autolist")
    end,
  },
  -- delay repeating keys
  -- {
  --   "ja-ford/delaytrain.nvim",
  --   config = function()
  --     require("delaytrain").setup({
  --       delay_ms = 1000, -- How long repeated usage of a key should be prevented
  --       grace_period = 3, -- How many repeated keypresses are allowed
  --     })
  --   end,
  --   event = "BufRead",
  -- },
  -- open project in github
  {
    "almo7aya/openingh.nvim",
    cmd = { "OpenInGHRepo", "OpenInGHFile" },
  },
  { "mong8se/actually.nvim" },
  {
    "vigoux/notifier.nvim",
    config = function()
      require 'notifier'.setup()
    end,
  },
  {
    "nguyenvukhang/nvim-toggler",
    config = function()
      require("user.toggler")
    end,
    event = "BufRead",
  },

  -- Fun:
  {
    "tamton-aquib/stuff.nvim",
    config = function()
      require("calc").setup()
    end,
    cmd = "Calc"
  },
  {
    "Eandrju/cellular-automaton.nvim",
    cmd = "CellularAutomaton"
  },
  {
    "tamton-aquib/duck.nvim",
    Lazy = true,
  },
  {
    "tamton-aquib/zone.nvim",
    config = function()
      require('zone').setup {
        style = "treadmill",
        after = 60000, -- Idle timeout
        -- More options to come later

        treadmill = {
          direction = "left",
          -- Opts for Treadmill style
        },
        epilepsy = {
          stage = "aura", -- "aura" or "ictal"
          -- etc.
        },
        dvd = {
          -- Opts for Dvd style
        },
        -- etc
      }
    end,
  }
}
lvim.builtin.bufferline.active = false
