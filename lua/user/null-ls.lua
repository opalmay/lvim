lvim.format_on_save = false

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
  -- { command = "stylua", filetypes = { "lua" } },
  { command = "shfmt", filetypes = { "sh" }, extra_args = { "-i", "2", "-ci", "-bn", "-w" } }, -- :(
  -- { command = "shfmt", filetypes = { "sh" } },
  -- { command = "black", filetypes = { "python" } },
  -- { command = "isort", filetypes = { "python" } },
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--single-quote  --trailing-comma all --tab-width 4" },
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    -- filetypes = { "typescript", "typescriptreact" },
  },
  {
    command = "black",
    extra_args = { "--line-length", "1000" }
  }
  -- {
  --   command = "yapf",
  --   extra_args = { "--style={based_on_style: google, column_limit: 1000, indent_width: 4}" },
  -- },
})

-- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "flake8",
    extra_args = { "--max-line-length", "1000" },
    filetypes = { "python" }
  },
  -- {
  --   -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
  --   command = "shellcheck",
  --   ---@usage arguments to pass to the formatter
  --   -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
  --   extra_args = { "--severity", "warning" },
  -- },
  {
    command = "codespell",
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    -- filetypes = { "javascript", "python" },
  },
}
