local cp = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette
require("catppuccin").setup({
  flavour = "macchiato",                                -- latte, frappe, macchiato, mocha
  background = {                                        -- :h background
    light = "latte",
    dark = "macchiato",
  },
  -- dim_inactive = {
  --   enabled = true,
  --   shade = "dark",
  --   percentage = 0.15,
  -- },
  -- transparent_background = true,
  custom_highlights = {
    -- HarpoonWindow = { ctermbg = 238 },
    -- HarpoonBorder = { fg = "#8AADF4" },
    -- Comment = { fg = colors.rosewater },
    -- TSConstBuiltin = { fg = colors.peach, style = {} },
    -- TSConstant = { fg = colors.sky },
    -- TSComment = { fg = colors.surface2, style = { "italic" } },
    -- IndentBlanklineChar = { fg = colors.maroon }
    -- WhichKeyFloat = { bg = colors.none },
    -- NormalFloat = { bg = colors.none },
    --
    HlSearchNear = { fg = "#1e2030", bg = "#ed8796" },
    HlSearchLensNear = { bg = cp.none },

    WhichKeyFloat = { bg = "NONE" },
    NormalFloat = { fg = cp.text, bg = "NONE" },
  },
  integrations = {
    bufferline = true,
    illuminate = true,
    which_key = true,
    treesitter = true,
    notify = true,
    fidget = true,
    telescope = true,
    harpoon = true,
    hop = true,
    mason = true,
    leap = true,
  },
})
lvim.colorscheme = "catppuccin"
-- local hour = tonumber(vim.fn.strftime("%H"))
-- if hour >= 17 or hour < 7 then
-- 	lvim.colorscheme = "catppuccin-macchiato"
-- else
-- 	lvim.colorscheme = "catppuccin-latte"
-- end
-- lvim.transparent_window = true
-- local colors = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette

-- vim.cmd("highlight IndentBlanklineContextChar guifg=#FAB387 gui=nocombine")
