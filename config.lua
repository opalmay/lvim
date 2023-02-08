reload("user.plugins")
reload("user.keymaps")
reload("user.options")
reload("user.cmp")
reload("user.nvimtree")
reload("user.lsp")
reload("user.treesitter")
reload("user.fidget")
reload("user.colorscheme")
reload("user.dap")
-- reload("user.dap-ui")
reload("user.whichkey")
reload("user.lualine")
reload("user.null-ls")
reload("user.enhancedjumps")
reload("user.autocmds")
reload("user.telescope")
-- reload("user.toggleterm")
reload("user.neovide")
reload("user.smoothie")

-- local cmp_mappings = require("cmp").mappings
-- lvim.builtin.cmp.mapping["<c-r>"] = cmp_mappings.complete()

-- vim.api.nvim_clear_autocmds({ pattern = "alpha", group = "_filetype_settings" })

-- local execs = {
-- 	{ keymap = "<leader>u", cmd = "sudo dmesg | less", desc = "Show Kernel Logs", size = 1 },
-- 	{ keymap = "<leader>k", cmd = "htop", desc = "Interactive System Monitor", size = 0.8 },
-- 	{
-- 		keymap = "<leader>os",
-- 		direction = "vertical",
-- 		cmd = "docker ps",
-- 		desc = "List Docker Containers",
-- 		close_on_exit = false,
-- 		persist_mode = false,
-- 		size = 0.3,
-- 	},
-- 	{ keymap = "<C-4>", cmd = "neofetch", close_on_exit = false, direction = "horizontal", size = 0.6 },
-- 	{ keymap = "<C-5>", cmd = "ls -l && read", direction = "horizontal" },
-- }
-- vim.list_extend(lvim.builtin.terminal.keybinds, execs)

-- -- lvim.builtin.terminal.execs = {
-- -- 	{ nil, "<C-8>", "Float Terminal", "float", nil },
-- -- }
