vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
lvim.transparent_window = true
local colors = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette
require("catppuccin").setup {
    transparent_background = lvim.transparent_window,
    custom_highlights = {
        HarpoonWindow = { ctermbg = 238 },
        HarpoonBorder = { fg = "#8AADF4" },
        -- Comment = { fg = colors.flamingo },
        -- TSConstBuiltin = { fg = colors.peach, style = {} },
        -- TSConstant = { fg = colors.sky },
        -- TSComment = { fg = colors.surface2, style = { "italic" } }
    },
    integrations = {
        illuminate = true,
        which_key = true,
        treesitter = true,
        notify = true,
        fidget = true,
        telescope = true
    },
}
lvim.colorscheme = "catppuccin"

-- local hl = function(thing, opts)
--     vim.api.nvim_set_hl(0, thing, opts)
-- end
-- -- hl("HarpoonBorder", {
-- --     ctermbg = 52,
-- --     -- fg = "blue"
-- -- })
-- -- hl("HarpoonWindow", {
-- --     ctermbg = 238
-- -- })
