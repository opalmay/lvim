lvim.plugins = {
  {
    "AckslD/muren.nvim",
    config = true,
    cmd = { "MurenToggle" },
  },
  { "catppuccin/nvim",      name = "catppuccin" },
  {
    "f-person/git-blame.nvim",
    cmd = "GitBlameToggle",
  },
  {
    "ThePrimeagen/harpoon",
    lazy = true,
  },
  {
    "opalmay/vim-smoothie",
  },
  {
    "opalmay/neoscroll.nvim",
    branch = "feat-scroll-past-bottom",
    event = "User FileOpened",
  },
  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre",
  },
  {
    "stevearc/stickybuf.nvim",
    config = function()
      require("stickybuf").setup()
    end,
  },
  {
    "rbong/vim-buffest",
    event = "BufReadPost",
  },
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end,
    keys = { "ys", "cs", "ds" },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "vim-matchup",
      "nvim-ts-autotag",
    },
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
    lazy = true,
  },
  { "andymass/vim-matchup", lazy = true },
  {
    "yioneko/nvim-yati",
    ft = "python",
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "theHamsta/nvim-dap-virtual-text",
      "mfussenegger/nvim-dap-python",
    },
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    config = function()
      require("user.dap-virtual-text")
    end,
    lazy = true,
  },
  {
    "mfussenegger/nvim-dap-python",
    lazy = true,
  },
  {
    "Weissle/persistent-breakpoints.nvim",
    config = function()
      require("persistent-breakpoints").setup({
        load_breakpoints_event = "BufReadPost",
      })
    end,
    lazy = true,
  },

  {
    "is0n/jaq-nvim",
    config = function()
      require("user.jaq")
    end,
    cmd = "Jaq",
  },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "kevinhwang91/nvim-bqf",
    config = function()
      require("user.bqf")
    end,
    ft = "qf",
  },
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  },

  {
    "ggandor/leap.nvim",
    lazy = true,
  },

  {
    "opalmay/vim-EnhancedJumps",
    event = "BufReadPost",
    dependencies = {
      "inkarkat/vim-ingo-library",
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        "!*",
      })
    end,
    cmd = "ColorizerToggle",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
  },
  {
    "gbprod/yanky.nvim",
    event = "User FileOpened",
    config = function()
      require("user.yanky")
    end,
  },
  {
    "gbprod/substitute.nvim",
    config = function()
      require("user.substitute")
    end,
    lazy = true,
  },
  {
    "gbprod/stay-in-place.nvim",
    config = function()
      require("stay-in-place").setup()
    end,
    event = "User FileOpened",
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-lspconfig.nvim", "nlsp-settings.nvim", "nvim-config-local", "nvim-navbuddy" },
  },
  {
    "klen/nvim-config-local",
    config = function()
      require("config-local").setup()
    end,
  },
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
  },
  {
    "MTDL9/vim-log-highlighting",
    ft = "log",
  },
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("user.copilot")
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup()
    end,
    event = "User FileOpened",
  },
  {
    "roobert/search-replace.nvim",
    config = function()
      require("search-replace").setup()
    end,
    event = "User FileOpened",
  },
  {
    "opalmay/floating-input.nvim",
    config = function()
      require("floating-input").setup({
        esc_normal_mode = true,
      })
    end,
    branch = "feat-esc-normalmode",
  },
  {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.ai").setup()
      require("mini.splitjoin").setup()
      require("mini.jump").setup()
    end,
    event = "User FileOpened",
  },
  {
    "DNLHC/glance.nvim",
    config = function()
      require("user.glance")
    end,
    cmd = "Glance",
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("user.symbols_outline")
    end,
    cmd = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" },
  },
  {
    "sindrets/diffview.nvim",
  },
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
  {
    "almo7aya/openingh.nvim",
    cmd = { "OpenInGHRepo", "OpenInGHFile" },
  },
  {
    "axieax/typo.nvim",
    config = function()
      require("typo").setup()
    end,
  },
  -- {
  -- 	"folke/noice.nvim",
  -- 	event = "VeryLazy",
  -- 	opts = {
  -- 		lsp = {
  -- 			override = {
  -- 				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
  -- 				["vim.lsp.util.stylize_markdown"] = true,
  -- 				["cmp.entry.get_documentation"] = true,
  -- 			},
  -- 		},
  -- 		routes = {
  -- 			{
  -- 				filter = {
  -- 					event = "msg_show",
  -- 					any = {
  -- 						{ find = "%d+L, %d+B" },
  -- 						{ find = "; after #%d+" },
  -- 						{ find = "; before #%d+" },
  -- 					},
  -- 				},
  -- 				view = "mini",
  -- 			},
  -- 		},
  -- 		presets = {
  -- 			bottom_search = true,
  -- 			command_palette = true,
  -- 			long_message_to_split = true,
  -- 			inc_rename = true,
  -- 		},
  -- 	},
  --    -- stylua: ignore
  --    keys = {
  --      { "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, mode = "c", desc = "Redirect Cmdline" },
  --      { "<leader>snl", function() require("noice").cmd("last") end, desc = "Noice Last Message" },
  --      { "<leader>snh", function() require("noice").cmd("history") end, desc = "Noice History" },
  --      { "<leader>sna", function() require("noice").cmd("all") end, desc = "Noice All" },
  --      { "<leader>snd", function() require("noice").cmd("dismiss") end, desc = "Dismiss All" },
  --      { "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "Scroll forward", mode = {"i", "n", "s"} },
  --      { "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "Scroll backward", mode = {"i", "n", "s"}},
  --    },
  -- },
  {
    "vigoux/notifier.nvim",
    config = function()
      require("notifier").setup()
    end,
  },
  {
    "nguyenvukhang/nvim-toggler",
    config = function()
      require("user.toggler")
    end,
    event = "User FileOpened",
  },
  {
    "jghauser/mkdir.nvim",
    event = "BufWritePre",
  },
  {
    "andrewferrier/debugprint.nvim",
    config = function()
      require("debugprint").setup()
    end,
    keys = "g?",
  },

  {
    "stevearc/oil.nvim",
    config = function()
      require("user.oil")
    end,
  },
  {
    "james1236/backseat.nvim",
    config = function()
      require("backseat").setup({
        -- openai_model_id = "gpt-3.5-turbo", --gpt-4 (If you do not have access to a model, it says "The model does not exist")
        openai_model_id = "gpt-4", --gpt-4 (If you do not have access to a model, it says "The model does not exist")
      })
    end,
    cmd = { "Backseat", "BackseatAsk" },
  },
  {
    "SmiteshP/nvim-navbuddy",
    lazy = true,
    dependencies = { "SmiteshP/nvim-navic" },
  },
  { "chrisgrieser/nvim-spider", lazy = true },
  {
    "Bryley/neoai.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    cmd = {
      "NeoAI",
      "NeoAIOpen",
      "NeoAIClose",
      "NeoAIToggle",
      "NeoAIContext",
      "NeoAIContextOpen",
      "NeoAIContextClose",
      "NeoAIInject",
      "NeoAIInjectCode",
      "NeoAIInjectContext",
      "NeoAIInjectContextCode",
    },
    keys = {
      { "<leader>od", desc = "summarize text" },
      { "<leader>og", desc = "generate git message" },
    },
    config = function()
      require("neoai").setup({
        -- Below are the default options, feel free to override what you would like changed
        ui = {
          output_popup_text = "NeoAI",
          input_popup_text = "Prompt",
          width = 30,               -- As percentage eg. 30%
          output_popup_height = 80, -- As percentage eg. 80%
          submit = "<Enter>",       -- Key binding to submit the prompt
        },
        models = {
          {
            name = "openai",
            model = "gpt-4",
            params = nil,
          },
        },
        register_output = {
          ["g"] = function(output)
            return output
          end,
          ["c"] = require("neoai.utils").extract_code_snippets,
        },
        inject = {
          cutoff_width = 75,
        },
        prompts = {
          context_prompt = function(context)
            return "Hey, I'd like to provide some context for future "
                .. "messages. Here is the code/text that I want to refer "
                .. "to in our upcoming conversations:\n\n"
                .. context
          end,
        },
        mappings = {
          ["select_up"] = "<C-k>",
          ["select_down"] = "<C-j>",
        },
        open_ai = {
          api_key = {
            env = "OPENAI_API_KEY",
            value = nil,
            -- `get` is is a function that retrieves an API key, can be used to override the default method.
            -- get = function() ... end

            -- Here is some code for a function that retrieves an API key. You can use it with
            -- the Linux 'pass' application.
            -- get = function()
            --     local key = vim.fn.system("pass show openai/mytestkey")
            --     key = string.gsub(key, "\n", "")
            --     return key
            -- end,
          },
        },
        shortcuts = {
          {
            name = "textify",
            key = "<leader>as",
            desc = "fix text with AI",
            use_context = true,
            prompt = [[
                Please rewrite the text to make it more readable, clear,
                concise, and fix any grammatical, punctuation, or spelling
                errors
            ]],
            modes = { "v" },
            strip_function = nil,
          },
          {
            name = "gitcommit",
            key = "<leader>ag",
            desc = "generate git commit message",
            use_context = false,
            prompt = function()
              return [[
                    Using the following git diff generate a consise and
                    clear git commit message, with a short title summary
                    that is 75 characters or less:
                ]] .. vim.fn.system("git diff --cached")
            end,
            modes = { "n" },
            strip_function = nil,
          },
        },
      })
    end,
  },
  {
    "lambdalisue/suda.vim",
    config = function()
      vim.g["suda#nopass"] = 1
    end,
  },
  {
    "milanglacier/yarepl.nvim",
    config = function()
      -- return lines

      -- below is the default configuration, there's no need to copy paste them if
      -- you are satisfied with the default configuration, just calling
      -- `require('yarepl').setup {}` is sufficient.
      local yarepl = require 'yarepl'
      local function powershell_formatter(lines)
        for i, _ in ipairs(lines) do
          lines[i] = lines[i] .. '\r'
        end
        return yarepl.formatter.trim_empty_lines(lines)
      end

      yarepl.setup {
        -- see `:h buflisted`, whether the REPL buffer should be buflisted.
        buflisted = true,
        -- whether the REPL buffer should be a scratch buffer.
        scratch = true,
        -- the filetype of the REPL buffer created by `yarepl`
        ft = 'REPL',
        -- How yarepl open the REPL window, can be a string or a lua function.
        -- See below example for how to configure this option
        wincmd = 'belowright 15 split',
        -- The available REPL palattes that `yarepl` can create REPL based on
        metas = {
          aichat = { cmd = 'aichat', formatter = yarepl.formatter.bracketed_pasting },
          radian = { cmd = 'radian', formatter = yarepl.formatter.bracketed_pasting },
          ipython = { cmd = 'ipython', formatter = yarepl.formatter.bracketed_pasting },
          python = { cmd = 'python', formatter = yarepl.formatter.trim_empty_lines },
          R = { cmd = 'R', formatter = yarepl.formatter.trim_empty_lines },
          bash = { cmd = 'bash', formatter = yarepl.formatter.trim_empty_lines },
          zsh = { cmd = 'zsh', formatter = yarepl.formatter.bracketed_pasting },
          -- powershell = { cmd = "pwsh", formatter = yarepl.formatter.trim_empty_lines },
          powershell = { cmd = "pwsh", formatter = powershell_formatter },
        },
        -- when a REPL process exits, should the window associated with those REPLs closed?
        close_on_exit = true,
        -- whether automatically scroll to the bottom of the REPL window after sending
        -- text? This feature would be helpful if you want to ensure that your view
        -- stays updated with the latest REPL output.
        scroll_to_bottom_after_sending = true,
        os = {
          -- Some hacks for Windows. macOS and Linux users can simply ignore
          -- them. The default options are recommended for Windows user.
          windows = {
            -- Send a final `\r` to the REPL with delay,
            send_delayed_cr_after_sending = true,
          },
        },
      }
    end
  }
}

lvim.builtin.bufferline.active = false
lvim.builtin.lir.active = false
lvim.builtin.bufferline.active = false
lvim.builtin.lir.active = false
lvim.builtin.bufferline.active = false
lvim.builtin.lir.active = false
lvim.builtin.bufferline.active = false
lvim.builtin.lir.active = false
lvim.builtin.bufferline.active = false
lvim.builtin.lir.active = false
lvim.builtin.bufferline.active = false
lvim.builtin.lir.active = false
