-- autocmd to not auto comment new line
vim.cmd("autocmd BufEnter * set fo-=c fo-=r fo-=o")
-- vim.cmd("autocmd FileType help wincmd L")

vim.cmd("au BufEnter github.com_*.txt set filetype=markdown")
vim.cmd("au BufEnter solarwinds.nice.com_*.txt set filetype=ps1")

lvim.autocommands = {
	{
		{ "BufEnter" },
		{
			group = buff,
			pattern = "sxhkdrc",
			command = "set filetype=sxhkdrc",
		},
	},
	-- {
	-- 	{ "BufEnter" },
	-- 	{
	-- 		group = spell,
	-- 		pattern = { "*.md", "*.txt" },
	-- 		command = "set spell",
	-- 	},
	-- },
	{
		{ "BufEnter" },
		{
			group = spell,
			pattern = { "*.lua" },
			command = "set nospell",
		},
	},
	-- {
	-- { "BufEnter" },
	-- {
	--   group = buff,
	--   pattern = ".py",
	--   callback = function()
	--     -- # add /home/opal/Documents/projects/webAvailability_dev/lib to python path
	--     -- vim.cmd("let $PYTHONPATH = '/home/opal/Documents/projects/webAvailability_dev/lib'")
	--     -- require("lspconfig")
	--     -- vim.cmd("LspRestart")
	--   end
	-- }
	-- },
	-- {
	--   { "CursorMoved" },
	--   {
	--     group = cursor,
	--     pattern = "*",
	--     callback = function ()
	--       vim.cmd("set nohlsearch")
	--     end
	--     -- command = "noh"
	--   }
	-- },
	{
		{ "TextYankPost" },
		{
			group = yank_group,
			pattern = "*",
			callback = function()
				vim.highlight.on_yank({
					higroup = "IncSearch",
					timeout = 40,
				})
			end,
		},
	},
	-- Add last insert position to jump list
	{
		{ "InsertLeave" },
		{
			group = insert_group,
			pattern = "*",
			callback = function()
				vim.cmd("norm m`")
			end,
		},
	},
}
