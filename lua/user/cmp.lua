local cmp = require("cmp")

cmp.setup.cmdline(":", {
    sources = {
        { name = "cmdline" },
    },
})
cmp.setup.cmdline({ "/", "?" }, {
    sources = {
        { name = "buffer" },
    },
})
lvim.builtin.cmp.mapping["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' })
lvim.builtin.cmp.mapping["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' })
-- lvim.builtin.cmp.mapping["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' })
