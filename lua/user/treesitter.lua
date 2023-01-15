-- lvim.builtin.treesitter.ensure_installed = "all"
-- lvim.builtin.illuminate.options.delay = 200
-- lvim.builtin.illuminate.active = false

lvim.builtin.indentlines.options.show_current_context = false
lvim.builtin.autopairs.enable_check_bracket_line = true
-- lvim.builtin.autopairs.disable_in_macro = true
local opts = {
	-- 	ensure_installed = "all",
	textsubjects = {
		enable = true,
		prev_selection = ",", -- (Optional) keymap to select the previous selection
		keymaps = {
			["."] = "textsubjects-smart",
			[";"] = "textsubjects-container-outer",
			["i;"] = "textsubjects-container-inner",
		},
	},
	textobjects = {
		select = {
			enable = true,
			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,

			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["if"] = "@function.inner",
				["af"] = "@function.outer",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
				["ak"] = "@comment.outer",
				["ia"] = "@parameter.inner", -- "ip" is already used
				["aa"] = "@parameter.outer", -- "ap" is already used
				["aT"] = "@table.outer",
			},
		},
		swap = {
			enable = true,
			swap_next = {
				["<leader>h"] = "@parameter.inner",
			},
			swap_previous = {
				["<leader>H"] = "@parameter.inner",
			},
		},
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				["]m"] = "@function.outer",
				["]]"] = { query = "@class.outer", desc = "Next class start" },
			},
			goto_next_end = {
				["]M"] = "@function.outer",
				["]["] = "@class.outer",
			},
			goto_previous_start = {
				["[m"] = "@function.outer",
				["[["] = "@class.outer",
			},
			goto_previous_end = {
				["[M"] = "@function.outer",
				["[]"] = "@class.outer",
			},
		},
		-- lsp_interop = {
		--   enable = true,
		--   border = 'none',
		--   peek_definition_code = {
		--     ["<leader>df"] = "@function.outer",
		--     ["<leader>dF"] = "@class.outer",
		--   },
		-- },
	},
	-- lsp_interop = {
	--   enable = true,
	--   border = "rounded",
	--   peek_definition_code = {
	--     ["gpof"] = "@function.outer",
	--     ["gpoc"] = "@class.outer",
	--   },
	-- },
	-- move = {
	--   enable = true,
	--   set_jumps = true, -- whether to set jumps in the jumplist
	--   goto_next_start = {
	--     ["]m"] = "@function.outer",
	--     ["]]"] = "@class.outer",
	--     ["]k"] = "@comment.outer",
	--   },
	--   goto_next_end = {
	--     ["]M"] = "@function.outer",
	--     ["]["] = "@class.outer",
	--     ["]K"] = "@comment.outer",
	--   },
	--   goto_previous_start = {
	--     ["[m"] = "@function.outer",
	--     ["[["] = "@class.outer",
	--     ["[k"] = "@comment.outer",
	--   },
	--   goto_previous_end = {
	--     ["[M"] = "@function.outer",
	--     ["[]"] = "@class.outer",
	--     ["[K"] = "@comment.outer",
	--   },
	-- },
}

lvim.builtin.treesitter = vim.tbl_deep_extend("force", lvim.builtin.treesitter, opts)
-- lvim.builtin.treesitter.matchup.enable = true

-- vim.opt.redrawtime = 500
-- -- local chunginess = {} -- Caching is hard
-- function isChungusBuf(_, bufnr)
-- 	-- if chunginess[bufnr] ~= nil then
-- 	-- 	return chunginess[bufnr]
-- 	-- end
-- 	local file = vim.api.nvim_buf_get_name(bufnr)
-- 	if not file or #file == 0 then
-- 		-- chunginess[bufnr] = false
-- 		return false
-- 	end

-- 	local max_filesize = 1024 * 1024
-- 	local ok, stats = pcall(vim.loop.fs_stat, file)
-- 	if ok and stats and stats.size > max_filesize then
-- 		-- chunginess[bufnr] = true
-- 		return true
-- 	end

-- 	-- chunginess[bufnr] = false
-- 	return false
-- end
-- -- Using the builtin TS ability to disable itself
-- lvim.builtin.treesitter.highlight.disable = isChungusBuf
-- lvim.builtin.treesitter.matchup.disable = isChungusBuf
-- lvim.builtin.treesitter.indent.disable = isChungusBuf
-- lvim.builtin.illuminate.options.large_file_cutoff = 5000

-- function isChungusBuf(_, bufnr)
-- 	if vim.b.big_file ~= nil then
-- 		return vim.b.big_file
-- 	end

-- 	local file = vim.api.nvim_buf_get_name(bufnr)
-- 	if not file or #file == 0 then
-- 		vim.b.big_file = false
-- 		return false
-- 	end

-- 	local max_filesize = 1024 * 1024
-- 	local ok, stats = pcall(vim.loop.fs_stat, file)
-- 	if ok and stats and stats.size > max_filesize then
-- 		vim.b.big_file = true
-- 		return true
-- 	end

-- 	vim.b.big_file = false
-- 	return false
-- end

-- -- Putting it in the autocommand didn't work for me
-- lvim.builtin.treesitter.highlight.disable = isFileBig
-- lvim.builtin.treesitter.matchup.disable = isFileBig
-- lvim.builtin.treesitter.indent.disable = isFileBig
-- lvim.builtin.illuminate.options.large_file_cutoff = 5000

-- lvim.autocommands = {
-- 	{
-- 		{ "BufReadPre" },
-- 		{
-- 			pattern = "*",
-- 			callback = function(args)
-- 				if isFileBig(_, args.buf) then
-- 					---@diagnostic disable-next-line: assign-type-mismatch
-- 					vim.opt_local.redrawtime = 500
-- 					vim.cmd("IlluminatePauseBuf")

-- 					vim.b.indent_blankline_use_treesitter = false
-- 					vim.b.indent_blankline_show_current_context = false

-- 					-- sql file works fine with DoMatchParen
-- 					if vim.endswith(args.file, ".json") then
-- 						vim.cmd("NoMatchParen") -- otherwise cursor movement is slowed down
-- 						-- vim.cmd("syntax off") -- For me in canada.json it hits maxmempattern and disables itsels anyway

-- 						vim.api.nvim_create_autocmd({ "BufUnload" }, {
-- 							command = "DoMatchParen",
-- 							buffer = args.buf,
-- 						})
-- 					end

-- 					vim.notify("File larger than 1MB, turned off treesitter")
-- 				else
-- 					-- I had these set using vim.opt and it slowed down the opening a lot
-- 					-- TODO: Make these overridable (if this is planned to be merged into lvim)
-- 					---@diagnostic disable-next-line: assign-type-mismatch
-- 					vim.opt_local.foldmethod = "expr"
-- 					---@diagnostic disable-next-line: assign-type-mismatch
-- 					vim.opt_local.foldexpr = "nvim_treesitter#foldexpr()"
-- 				end
-- 			end,
-- 		},
-- 	},
-- }
