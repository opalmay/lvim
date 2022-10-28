-- buffer_mappings = {
--     normal_mode = {
--       ["K"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show hover" },
--       ["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Goto Definition" },
--       ["gD"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Goto declaration" },
--       ["gr"] = { "<cmd>lua vim.lsp.buf.references()<CR>", "Goto references" },
--       ["gI"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Goto Implementation" },
--       ["gs"] = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "show signature help" },
--       ["gp"] = { "<cmd>lua require'lvim.lsp.peek'.Peek('definition')<CR>", "Peek definition" },
--       ["gl"] = {
--         "<cmd>lua require'lvim.lsp.handlers'.show_line_diagnostics()<CR>",
--         "Show line diagnostics",
--       },
--     },

lvim.lsp.diagnostics.virtual_text = false
-- override open_floating_preview to use borders
-- need to check upstream
-- local border = { { "╭", "FloatBorder" }, { "─", "FloatBorder" }, { "╮", "FloatBorder" }, { "│", "FloatBorder" },
--     { "╯", "FloatBorder" }, { "─", "FloatBorder" },
--     { "╰", "FloatBorder" }, { "│", "FloatBorder" } }
-- local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
-- function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
--     opts = opts or {}
--     opts.border = opts.border or border
--     return orig_util_open_floating_preview(contents, syntax, opts, ...)
-- end

-- Auto load nlsp settings jsons
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
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>Telescope lsp_declarations<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gI", "<cmd>Telescope lsp_implementations<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format({ async = true })' ]])
  vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<M-f>", "<cmd>Format<cr>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<M-a>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<M-s>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
  -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
end

lvim.lsp.on_attach_callback = function(client, bufnr)
  lsp_keymaps(bufnr)
  update_nlspsettings(client)
end
