local components = require("lvim.core.lualine.components")
-- local colors = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette
-- local bubbles_theme = {
-- 	normal = {
-- 		a = { fg = colors.black, bg = colors.violet },
-- 		b = { fg = colors.white, bg = colors.grey },
-- 		c = { fg = colors.black, bg = colors.black },
-- 	},

-- 	insert = { a = { fg = colors.black, bg = colors.blue } },
-- 	visual = { a = { fg = colors.black, bg = colors.cyan } },
-- 	replace = { a = { fg = colors.black, bg = colors.red } },

-- 	inactive = {
-- 		a = { fg = colors.white, bg = colors.black },
-- 		b = { fg = colors.white, bg = colors.black },
-- 		c = { fg = colors.black, bg = colors.black },
-- 	},
-- }
-- lvim.builtin.lualine.options.theme = bubbles_theme
lvim.builtin.lualine.sections.lualine_x = { components.lsp, components.filetype }
-- lvim.builtin.lualine.sections.lualine_a = { "mode", separator = { left = "" } }
-- lvim.builtin.lualine.options.section_separators = { left = "", right = "" }
