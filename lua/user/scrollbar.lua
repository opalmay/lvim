local colors = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette
-- local icons = lvim.icons

require("scrollbar").setup({
  show = false,
  hide_if_all_visible = true,
  show_in_active_only = true,
  handle = {
    color = colors.overlay0,
  },
  -- GitAdd = {
  --   text = icons.ui.lineLeft
  -- }
})
require("scrollbar.handlers.search").setup({
  calm_down = true,
  nearest_only = true
})
-- require("scrollbar.handlers.gitsigns").setup()
