vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
require("catppuccin").setup {
    transparent_background = true,
    -- custom_highlights = {
        -- HarpoonWindow = { ctermbg = 238 },
        -- HarpoonBorder = { fg = "#8AADF4" },
        -- Comment = { fg = colors.flamingo },
        -- TSConstBuiltin = { fg = colors.peach, style = {} },
        -- TSConstant = { fg = colors.sky },
        -- TSComment = { fg = colors.surface2, style = { "italic" } }
    -- },
    integrations = {
        illuminate = true,
        which_key = true,
        treesitter = true,
        notify = true,
        fidget = true,
        telescope = true,
        harpoon = true
    },
}
lvim.colorscheme = "catppuccin"

-- lvim.transparent_window = true
-- local colors = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette
