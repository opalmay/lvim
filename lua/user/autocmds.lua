lvim.autocommands = {
	-- {
	-- 	{ "BufReadPre" }, -- This is definitly more fitting than BufEnter
	-- 	{
	-- 		pattern = "*",
	-- 		callback = function(args)
	-- 			if isChungusBuf(_, args.buf) then
	-- 				-- Could also handle TS here:
	-- 				-- vim.cmd("TSBufDisable highlight")
	-- 				-- vim.cmd("TSBufDisable matchup")
	-- 				-- vim.cmd("TSBufDisable indent")

	-- 				vim.cmd("syntax off") -- Not needed, handled by redrawtime
	-- 				vim.cmd("IlluminatePauseBuf") -- Still needed for many columns few rows buffs
	-- 				vim.cmd("IndentBlanklineDisable")
	-- 				vim.cmd("NoMatchParen") -- I think this is the matchup TS module?

	-- 				vim.notify("Chungus buf: " .. args.buf)
	-- 			end
	-- 		end,
	-- 	},
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
