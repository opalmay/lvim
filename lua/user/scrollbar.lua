local colors = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette

require("scrollbar").setup({
	show = false,
	show_in_active_only = true,
	handle = {
		-- color = "#949494"
		color = colors.overlay0,
	},
})
-- require("scrollbar.handlers.search").setup()
