-- local harpoon = require('harpoon')
-- local harpoon_mark = require('harpoon.mark')

-- local mark_keys = { "f", "d", "s", "a" } -- or use asdfg, 12345 or whatever.
-- local marks = function()
--     local marks = harpoon.get_mark_config().marks
--     local current_mark_idx = harpoon_mark.get_current_index()
--     local output = {}

--     for i, key in ipairs(mark_keys) do
--         local filename = vim.fs.basename(marks[i].filename)
--         local label = ' ' .. key .. ': ' .. filename .. ' '

--         if i == current_mark_idx then
--             table.insert(output, '%#lualine_b_normal#' .. label)
--         else
--             table.insert(output, '%#lualine_c_inactive#' .. label)
--         end
--     end

--     return table.concat(output, '')
-- end

--
-- lvim.builtin.lualine.options.globalstatus = true
-- lvim.builtin.lualine.on_config_done = function()
-- 	require("lualine").setup({
-- 		options = {
-- 			theme = "auto",
-- 			-- sections = {
-- 			--     lualine_x = { 'filetype' }
-- 			-- }
-- 		},
-- 	})
-- end
--

-- local function lualine_lsp_signature()
--   return require("lsp_signature").status_line(500).hint
--   return require("lsp_signature").status_line(500).label
-- end
-- lvim.builtin.lualine.sections.lualine_c = { lualine_lsp_signature }
local components = require "lvim.core.lualine.components"
lvim.builtin.lualine.sections.lualine_x = { components.lsp, components.filetype }
