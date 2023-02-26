require("hlslens").setup({
	-- calm_down = false,
	-- nearest_only = true,
	-- nearest_float_when = "always",
})

local kopts = { noremap = true, silent = true }

-- vim.api.nvim_set_keymap("n", "n", [[<Cmd>call smoothie#do('n')<CR><Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap(
	"n",
	"n",
	[[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
	kopts
)
vim.api.nvim_set_keymap("n", "N", [[<Cmd>call smoothie#do('N')<CR><Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap("n", "*", [[<Cmd>call smoothie#do('*')<CR><Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap("n", "#", [[call smoothie#do('#')<CR>]], kopts)
vim.api.nvim_set_keymap("n", "g*", [[call smoothie#do('g*')<CR>]], kopts)
vim.api.nvim_set_keymap("n", "g#", [[call smoothie#do('g#')<CR>]], kopts)

vim.keymap.set({ "n", "x" }, "<Leader>L", function()
	vim.schedule(function()
		if require("hlslens").exportLastSearchToQuickfix() then
			vim.cmd("cw")
		end
	end)
	return ":noh<CR>"
end, { expr = true })
