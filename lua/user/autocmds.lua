local autocmd = vim.api.nvim_create_autocmd
autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})
-- Add last insert position to jump list
autocmd('InsertLeave', {
    group = insert_group,
    pattern = '*',
    callback = function ()
        vim.cmd "norm m`"
    end
})
