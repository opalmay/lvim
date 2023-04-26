-- -- -- lvim.builtin.telescope.defaults.initial_mode = "normal"
-- lvim.builtin.telescope.defaults = {
-- 	layout_strategy = "horizontal",
-- }
--lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))
-- lvim.builtin.telescope.pickers.live_grep = {
--   layout_strategy = "vertical",
--   layout_config = {
--     vertical = {
--       width = 0.5,
--       height = 0.9,
--       preview_height = 0.6,
--       preview_cutoff = 0
--     }
--   },
--   only_sort_text = true,
-- -- }
-- lvim.builtin.telescope = vim.tbl_deep_extend("force", {
-- theme = "ivy",
-- pickers = {
-- 	live_grep = {
-- 		layout_strategy = "horizontal",
-- 		layout_config = {
-- 			horizontal = {
-- 				-- width = 0.9,
-- 				-- height = 0.9,
-- 				-- preview_width = 0.6,
-- 				-- preview_cutoff = 120,
-- 			},
-- 		},
-- 	},
-- },
-- }, lvim.builtin.telescope)
-- local actions = require("telescope.actions")
-- lvim.builtin.telescope.defaults.mappings.i["<c-t>"] = actions.send_to_qflist + actions.open_qflist
-- lvim.builtin.telescope.defaults.mappings.n["<c-t>"] = actions.send_to_qflist + actions.open_qflist

lvim.builtin.telescope.on_config_done = function(telescope)
	-- pcall(telescope.load_extension, "neoclip")
	-- pcall(telescope.load_extension, "yank_history")
	-- pcall(telescope.load_extension, "zoxide")
	-- pcall(telescope.load_extension, "undo")
	pcall(telescope.load_extension, "lazy")
	-- pcall(telescope.load_extension, "refactoring")
end

-- lvim.builtin.telescope.pickers.live_grep.layout_config = {
-- 	--   -- prompt_position = "top",
-- 	-- height = 0.6,
-- 	--   width = 0.8,
-- 	-- bottom_pane = {
-- 	--   height = 250,
-- 	--   preview_cutoff = 120,
-- 	-- },
-- 	center = {
-- 		height = 0.5,
-- 		-- preview_cutoff = 40,
-- 		width = 0.6,
-- 	},
-- 	--   cursor = {
-- 	--     preview_cutoff = 40,
-- 	--   },
-- 	--   horizontal = {
-- 	--     preview_cutoff = 120,
-- 	--     preview_width = 0.6,
-- 	--   },
-- 	--   vertical = {
-- 	--     preview_cutoff = 40,
-- 	--   },
-- 	-- flex = {
-- 	--   flip_columns = 150,
-- 	-- },
-- }

-- lvim.builtin.telescope.theme = "center"
-- -- -- lvim.builtin.telescope.defaults.initial_mode = "insert"
-- -- -- lvim.builtin.telescope.defaults.sorting_strategy = "ascending"
-- -- -- lvim.builtin.telescope.defaults.layout_strategy = "vertical"
-- -- lvim.builtin.telescope.defaults.prompt_prefix = "  "
-- -- lvim.builtin.telescope.defaults.selection_caret = "❯ "
