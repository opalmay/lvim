local colors = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette

require("scrollbar").setup({
  -- show = false,
  hide_if_all_visible = true,
  show_in_active_only = true,
  handle = {
    -- color = "#949494"
    color = colors.overlay0,
  },
  -- handlers = {
  --   search = true
  -- }
})
require("scrollbar.handlers.search").setup({
  calm_down = true,
  nearest_only = true
})
