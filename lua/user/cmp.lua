local cmp = require("cmp")

cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = "cmdline" },
        { name = "path" },
    },
})
cmp.setup.cmdline({ "/", "?" }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = "buffer" },
    },
})
-- lvim.builtin.cmp.sources
-- cmp.setup({
--     enabled = function()
--         return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
--             or require("cmp_dap").is_dap_buffer()
--     end
-- })

-- cmp.setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
--     sources = {
--         { name = "dap" },
--     },
-- })

lvim.builtin.cmp.mapping["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' })
lvim.builtin.cmp.mapping["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' })
