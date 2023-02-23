lvim.lsp.diagnostics.virtual_text = false
require("lspconfig.ui.windows").default_options.border = "rounded"

local function update_nlspsettings(client)
	local nlspsettings = require("nlspsettings")
	local ok, new_settings = pcall(nlspsettings.get_settings, client.config.root_dir, client.name)

	if ok and not vim.tbl_isempty(new_settings or {}) then
		nlspsettings.update_settings(client.name)
	end
end

lvim.lsp.buffer_mappings.normal_mode = {}
local function lsp_keymaps(bufnr)
	local opts = { noremap = true, silent = true }
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>Telescope lsp_definitions initial_mode=normal<CR>", opts)
	-- vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>Telescope lsp_declarations initial_mode=normal<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gI", "<cmd>Telescope lsp_implementations initial_mode=normal<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>Telescope lsp_references initial_mode=normal<CR>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format({ async = true })' ]])
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<M-f>", "<cmd>Format<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<M-a>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	vim.api.nvim_set_keymap("n", "<C-LeftMouse>", "<LeftMouse><cmd>lua vim.lsp.buf.hover()<CR>", opts)
	vim.api.nvim_set_keymap("n", "<C-RightMouse>", "<LeftMouse><cmd>lua vim.diagnostic.open_float()<CR>", opts)
end

lvim.lsp.on_attach_callback = function(client, bufnr)
	lsp_keymaps(bufnr)
	update_nlspsettings(client)

	-- if client.server_capabilities.signatureHelpProvider then
	--   require('lsp-overloads').setup(client, {})
	-- end
end
-- require'toggle_lsp_diagnostics'.init({ underline = false, virtual_text = { prefix = "XXX", spacing = 5 }})
require("lsp_signature").setup({
	hint_prefix = "",
	-- hint_enable = true,
	hint_enable = false,
	floating_window = false,
	toggle_key = "<C-a>",
	-- max_height = 20
	-- select_signature_key = "<C-X>"
	-- noice = true
})
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- remove pylsp from the table
-- for i, server in ipairs(lvim.lsp.automatic_configuration.skipped_servers) do
-- 	if server == "pylsp" then
-- 		table.remove(lvim.lsp.automatic_configuration.skipped_servers, i)
-- 		break
-- 	end
-- end

-- require("lvim.lsp.manager").setup("jedi_language_server", {})
-- require("lspconfig").jedi_language_server.setup({})
-- require("lspconfig").pylsp.setup({
-- 	cmd = { "pylsp", "-v", "--log-file", "/tmp/nvim-pylsp.log" },
-- })
-- require("lvim.lsp.manager").setup("pylsp", {})
-- lvim.lsp.installer.setup.automatic_installation = false
