lvim.plugins = {
	-- {
	-- 	"kyazdani42/nvim-tree.lua",
	-- 	cmd = "NvimTreeToggle",
	-- },
	-- {
	--   "nvim-lua/plenary.nvim",
	--   build = "GIT_DIR=~/.local/share/lunarvim/site/pack/lazy/opt/plenary.nvim/.git && (git remote add opalmay https://github.com/opalmay/plenary.nvim && git fetch opalmay) && git checkout fix-path-expend"
	-- },
	-- {
	--   "telescope-undo.nvim"
	-- },
	-- {
	-- 	"Exafunction/codeium.vim",
	-- },
	-- {
	-- 	"jcdickinson/codeium.nvim",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"MunifTanjim/nui.nvim",
	-- 		"hrsh7th/nvim-cmp",
	-- 	},
	-- 	config = function()
	-- 		require("codeium").setup({})
	-- 	end,
	-- },
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "telescope-fzf-native.nvim", "tsakirist/telescope-lazy.nvim" },
	},
	{ "catppuccin/nvim", name = "catppuccin", lazy = false },
	-- { "Yazeed1s/oh-lucy.nvim" },
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
		event = "BufRead",
	},
	{
		"opalmay/neoscroll.nvim",
		branch = "feat-scroll-past-bottom",
		event = "BufRead",
	},
	{
		"nvim-pack/nvim-spectre",
		cmd = "Spectre",
	},
	{
		"stevearc/stickybuf.nvim",
		event = "BufRead",
	},
	{
		"rbong/vim-buffest",
		event = "BufRead",
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
		"hrsh7th/nvim-cmp",
		dependencies = {
			"cmp-nvim-lsp",
			"cmp_luasnip",
			"cmp-buffer",
			"cmp-path",

			"cmp-cmdline",
			"copilot-cmp",
		},
	},
	-- {
	--   "hrsh7th/cmp-cmdline",
	--   lazy = true
	--   -- event = "CmdLineEnter"
	-- },
	{
		"zbirenbaum/copilot-cmp",
		dependencies = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end,
		lazy = true,
		-- event = "VimEnter",
	},
	-- "rcarriga/cmp-dap",

	-- treesitter:
	{ "andymass/vim-matchup", event = "BufRead" },
	{ "nvim-treesitter/nvim-treesitter-textobjects", event = "BufRead" },
	{ "RRethy/nvim-treesitter-textsubjects", event = "BufRead" },

	{
		"mfussenegger/nvim-dap",
		dependencies = "theHamsta/nvim-dap-virtual-text",
	},
	-- dap
	{
		"theHamsta/nvim-dap-virtual-text",
		-- cmd = "DapVirtualTextToggle",
		config = function()
			reload("user.dap-virtual-text")
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
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
	},
	{ "sindrets/diffview.nvim" },

	-- { "folke/noice.nvim" },
	-- { "MunifTanjim/nui.nvim" },

	-- " }phaazon/hop.nvim",
	{
		"ggandor/leap.nvim",
		lazy = true,
	},

	-- jump list:
	{
		"opalmay/vim-EnhancedJumps",
		event = "BufRead",
		dependencies = {
			"inkarkat/vim-ingo-library",
		},
	},
	-- { "petertriho/nvim-scrollbar" },
	-- { "kevinhwang91/nvim-hlslens" },
	-- { "haya14busa/vim-asterisk" },
	-- {
	--   "asiryk/auto-hlsearch.nvim",
	--   config = function()
	--     require("auto-hlsearch").setup()
	--   end,
	-- },
	{
		"NvChad/nvim-colorizer.lua",
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
		cmd = "MarkdownPreview",
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
	},
	{
		"Vimjas/vim-python-pep8-indent",
		ft = "python",
	},
	{
		"gbprod/yanky.nvim",
		event = "BufRead",
		-- event = "User FileOpened",
		-- keys = { "y", "Y" },
		config = function()
			require("user.yanky")
		end,
		lazy = true,
	},
	{
		"gbprod/substitute.nvim",
		event = "BufRead",
		-- event = "User FileOpened",
		-- keys = { "s", "S" },
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
			require("config-local").setup()
		end,
		-- event = "BufRead",
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
		-- cmd = "Copilot",
		event = "VimEnter",
		config = function()
			vim.defer_fn(function()
				require("user.copilot")
			end, 100)
		end,
	},
	-- {
	--   "tzachar/cmp-tabnine",
	--   build = "./install.sh",
	--   event = "InsertEnter",
	-- },
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
		event = "BufRead",
	},
	{
		"roobert/search-replace.nvim",
		config = function()
			require("search-replace").setup()
		end,
		event = "BufRead",
	},
	{
		"stevearc/dressing.nvim",
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
		cmd = "Glance",
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
			require("live-command").setup({
				commands = {
					Norm = { cmd = "norm" },
				},
			})
		end,
		cmd = "Norm",
	},
	-- treesitter queries map popup
	-- {
	-- 	"ziontee113/neo-minimap",
	-- 	config = function()
	-- 		require("user.neo-minimap")
	-- 	end,
	-- 	lazy = false,
	-- },
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
			require("notifier").setup()
		end,
	},
	{
		"nguyenvukhang/nvim-toggler",
		config = function()
			require("user.toggler")
		end,
		event = "BufRead",
	},
	{ "jghauser/mkdir.nvim", event = "BufWritePre" },
	-- broken for some reason
	-- {
	-- 	"chrisgrieser/nvim-recorder",
	-- 	config = function()
	-- 		require("recorder").setup()
	-- 	end,
	-- },
	{
		"andrewferrier/debugprint.nvim",
		config = function()
			require("debugprint").setup()
		end,
		keys = "g?",
	},
	{
		"Weissle/persistent-breakpoints.nvim",
		config = function()
			require("persistent-breakpoints").setup({
				load_breakpoints_event = "BufReadPost",
			})
		end,
		event = "BufReadPost",
	},
	-- it looks cool but it's a bit too intrusive
	-- {
	-- 	"ray-x/navigator.lua",
	-- 	dependencies = {
	-- 		{ "ray-x/guihua.lua", run = "cd lua/fzy && make" },
	-- 		{ "neovim/nvim-lspconfig" },
	-- 	},
	-- 	config = function()
	-- 		-- require("user.navigator")
	-- 	end,
	-- },
	-- chatgpt
	-- {
	-- 	"aduros/ai.vim",
	-- },

	-- Fun:
	{
		"tamton-aquib/stuff.nvim",
		config = function()
			require("calc").setup()
		end,
		cmd = "Calc",
	},
	{
		"Eandrju/cellular-automaton.nvim",
		cmd = "CellularAutomaton",
	},
	{
		"tamton-aquib/duck.nvim",
		lazy = true,
	},
	{
		"tamton-aquib/zone.nvim",
		config = function()
			require("zone").setup({
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
			})
		end,
		cmd = "Zone",
	},
	{
		"glacambre/firenvim",
		build = function()
			vim.fn["firenvim#install"](0)
		end,
		cond = vim.g.started_by_firenvim ~= nil,
	},
	{
		"yioneko/nvim-yati",
		-- tag = "*"
		pt = "python",
	},
	{
		"stevearc/oil.nvim",
		config = function()
			require("user.oil")
		end,
		-- cmd = "Oil",
		-- event = "User DirOpened",
	},
	-- { "kevinhwang91/nvim-ufo", dependencies = "kevinhwang91/promise-async" },
}

lvim.builtin.bufferline.active = false
lvim.builtin.lir.active = false
-- lvim.builtin.terminal.active = false
-- lvim.builtin.alpha.active = false
