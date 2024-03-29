lvim.format_on_save = true

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "shfmt", filetypes = { "sh" }, extra_args = { "-i", "2", "-ci", "-bn", "-w" } }, -- :(
	-- { command = "shfmt", filetypes = { "sh" } },
	-- { command = "black", filetypes = { "python" } },
	-- { command = "isort", filetypes = { "python" } },
	-- {
	--   -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
	--   command = "prettier",
	--   ---@usage arguments to pass to the formatter
	--   -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
	--   -- extra_args = { "--single-quote  --trailing-comma all --tab-width 4 --line-width 200" },
	--   extra_args = { "--single-quote", "--trailing-comma", "all", "--tab-width", "2", "--print-width", "200" },
	--   ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
	--   -- filetypes = { "typescript", "typescriptreact" },
	-- },
	{
		command = "black",
		extra_args = { "--line-length", "200" },
		filetypes = { "python" },
	},
	-- {
	--   command = "yapf",
	--   extra_args = { "--style={based_on_style: google, column_limit: 200, indent_width: 4}" },
	-- },
})

-- set additional linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{
		command = "flake8",
		extra_args = { "--max-line-length", "200" },
		filetypes = { "python" },
	},
	-- {
	--   -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
	--   command = "shellcheck",
	--   ---@usage arguments to pass to the formatter
	--   -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
	--   extra_args = { "--severity", "warning" },
	-- },
	-- {
	-- 	command = "cspell",
	-- 	---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
	-- 	filetypes = { "markdown", "text" },
	-- },
})
