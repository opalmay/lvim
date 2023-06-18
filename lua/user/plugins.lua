lvim.plugins = {
	{
		-- multiple replacements thingy
		"AckslD/muren.nvim",
		config = true,
		cmd = { "MurenToggle" },
	},
	-- {
	-- 	"Bekaboo/dropbar.nvim",
	-- 	config = function()
	-- 		-- duplicate lvim.icons.kind
	-- 		local kind_icons = vim.deepcopy(lvim.icons.kind)
	-- 		-- add padding
	-- 		for k, v in pairs(kind_icons) do
	-- 			kind_icons[k] = v .. " "
	-- 		end
	-- 		-- require("dropbar").setup()
	-- 		require("dropbar").setup({
	-- 			icons = {
	-- 				kinds = {
	-- 					symbols = kind_icons,
	-- 				},
	-- 				ui = {
	-- 					bar = {
	-- 						-- separator = "  ",
	-- 						separator = " " .. lvim.icons.ui.ChevronRight .. " ",
	-- 						extends = "…",
	-- 					},
	-- 					menu = {
	-- 						{
	-- 							separator = " ",
	-- 							indicator = " ",
	-- 						},
	-- 					},
	-- 				},
	-- 			},
	-- 		})
	-- 	end,
	-- },
	{ "catppuccin/nvim", name = "catppuccin" },
	-- { "Yazeed1s/oh-lucy.nvim" },
	{
		"f-person/git-blame.nvim",
		cmd = "GitBlameToggle",
	},
	{
		"ThePrimeagen/harpoon",
		lazy = true,
		-- config = function()
		-- 	require("harpoon").setup({ save_on_toggle = true })
		-- end,
	},
	{
		"opalmay/vim-smoothie",
		-- event = "User FileOpened",
		-- keys = { "j", "k" },
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
		event = "BufReadPost",
	},
	{
		"rbong/vim-buffest",
		event = "BufReadPost",
	},
	-- { "junegunn/vim-slash" }, Maybe fork this?
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup()
		end,
		keys = { "ys", "cs", "ds" },
	},

	-- treesitter:
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			-- "nvim-ts-context-commentstring",
			"vim-matchup",
			"nvim-treesitter-textobjects",
			"nvim-treesitter-textsubjects",
			-- "nvim-yati",
		},
	},
	{ "andymass/vim-matchup", lazy = true },
	{ "nvim-treesitter/nvim-treesitter-textobjects", lazy = true },
	{ "RRethy/nvim-treesitter-textsubjects", lazy = true },
	{
		"yioneko/nvim-yati",
		-- tag = "*"
		ft = "python",
	},
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"theHamsta/nvim-dap-virtual-text",
			"mfussenegger/nvim-dap-python",
		},
	},
	-- dap
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
		-- event = "BufReadPost",
		lazy = true,
	},

	-- run stuff
	-- {
	-- 	"michaelb/sniprun",
	-- 	build = "bash ./install.sh",
	-- 	-- cmd = { "SnipRun", "SnipLive" },
	-- 	config = function()
	-- 		require("user.sniprun")
	-- 	end,
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
		ft = "qf",
	},
	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewFileHistory" },
	},

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
		event = "BufReadPost",
		dependencies = {
			"inkarkat/vim-ingo-library",
		},
		-- keys = { "<C-i>", "<C-o>" },
	},
	-- {
	-- 	"petertriho/nvim-scrollbar",
	-- 	event = "User FileOpened",
	-- 	config = function()
	-- 		require("user.scrollbar")
	-- 	end,
	-- 	dependencies = {
	-- 		"nvim-hlslens",
	-- 	},
	-- },
	-- {
	-- 	"kevinhwang91/nvim-hlslens",
	-- 	config = function()
	-- 		require("user.hlslens")
	-- 	end,
	-- 	lazy = true,
	-- },
	-- { "haya14busa/vim-asterisk" },
	-- {
	--   "asiryk/auto-hlsearch.nvim",
	--   config = function()
	--     require("auto-hlsearch").setup()
	--   end,
	-- },
	-- {
	-- 	"KenN7/vim-arsync",
	-- 	event = "BufWritePre",
	-- },
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
		"iamcco/markdown-preview.nvim",
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = "markdown",
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
	},
	-- {
	-- 	"Vimjas/vim-python-pep8-indent",
	-- 	ft = "python",
	-- },
	{
		"gbprod/yanky.nvim",
		-- event = "BufReadPost",
		event = "User FileOpened",
		-- keys = { "y", "p", "P", "gp", "gP" },
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
		keys = { ">", "<", "=" },
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
		-- Lazy load
	},
	-- {
	-- 	"stevearc/dressing.nvim",
	-- },
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
			-- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-ai.md
			require("mini.ai").setup()
			require("mini.splitjoin").setup()
		end,
		event = "User FileOpened",
	},
	{
		"giusgad/pets.nvim",
		config = function()
			require("pets").setup()
		end,
		cmd = { "PetsNew", "PetsNewCustom", "PetsList" },
		dependencies = { "MunifTanjim/nui.nvim", "giusgad/hologram.nvim" },
	},
	-- {
	-- 	"tjdevries/sg.nvim",
	-- 	build = "cargo build --workspace",
	-- 	dependencies = { "nvim-lua/plenary.nvim" },
	-- 	config = function()
	-- 		-- require("sg").setup({ on_attach = lvim.lsp.on_attach_callback })
	-- 		require("sg").setup({})
	-- 	end,
	-- 	event = "User FileOpened",
	-- },
	{
		"DNLHC/glance.nvim",
		config = function()
			require("user.glance")
		end,
		-- event = "BufReadPost",
		cmd = "Glance",
	},
	-- treesitter queries map popup
	{
		"ziontee113/neo-minimap",
		config = function()
			require("user.neo-minimap")
		end,
		-- keys = "zj",
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
		event = "User FileOpened",
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
	--   event = "BufReadPost",
	-- },
	-- open project in github
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
	-- {
	-- 	"glacambre/firenvim",
	-- 	build = function()
	-- 		vim.fn["firenvim#install"](0)
	-- 	end,
	-- 	cond = vim.g.started_by_firenvim ~= nil,
	-- },
	{
		"stevearc/oil.nvim",
		config = function()
			require("user.oil")
		end,
		-- cmd = "Oil",
		-- event = "User DirOpened",
	},
	{
		"james1236/backseat.nvim",
		config = function()
			require("backseat").setup({
				-- Alternatively, set the env var $OPENAI_API_KEY by putting "export OPENAI_API_KEY=sk-xxxxx" in your ~/.bashrc
				openai_model_id = "gpt-3.5-turbo", --gpt-4 (If you do not have access to a model, it says "The model does not exist")
				language = "english", -- Such as 'japanese', 'french', 'pirate', 'LOLCAT'
				-- split_threshold = 100,
				-- additional_instruction = "", -- (GPT-3 will probably deny this request, but GPT-4 complies)
				-- highlight = {
				--     icon = '', -- ''
				--     group = 'Comment',
				-- }
			})
		end,
		cmd = { "Backseat", "BackseatAsk" },
	},
	{
		"SmiteshP/nvim-navbuddy",
		lazy = true,
		-- cmd = "Navbuddy",
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
				-- Options go here
			})
		end,
	},
	{
		"ThePrimeagen/refactoring.nvim",
	},
	-- {
	-- 	"phaazon/hop.nvim",
	-- 	config = function()
	-- 		require("hop").setup()
	-- 	end,
	-- },
	-- {
	-- 	"miversen33/netman.nvim",
	-- 	config = function()
	-- 		require("netman")
	-- 	end,
	-- },
	-- {
	-- 	"nvim-neo-tree/neo-tree.nvim",
	-- 	branch = "v2.x",
	-- 	dependencies = {
	-- 		"nvim-lua/plenary.nvim",
	-- 		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	-- 		"MunifTanjim/nui.nvim",
	-- 		"netman.nvim",
	-- 	},
	-- 	config = function()
	-- 		require("neo-tree").setup({
	-- 			sources = {
	-- 				"filesystem", -- Neotree filesystem source
	-- 				"netman.ui.neo-tree", -- The one you really care about 😉
	-- 			},
	-- 		})
	-- 	end,
	-- },
}

lvim.builtin.bufferline.active = false
lvim.builtin.lir.active = false
-- lvim.builtin.breadcrumbs.active = true
-- lvim.builtin.nvimtree.active = false
--
--
