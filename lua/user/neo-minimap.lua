-- for shorthand usage
local nm = require("neo-minimap")

-- will reload your neo-minimap config file on save
-- works only when you have only 1 neo-minimap config file
nm.source_on_save("/home/opal/.config/lvim/lua/user/neo-minimap.lua") -- optional

nm.set({ "zj", "zk", "zl" }, { "*.lua" }, {
  events = { "BufEnter" },

  -- lua table, values inside can be type `string` or `number`
  -- accepts multiple treesitter queries, corresponse to each keymap,
  -- if you press "keymap1", minimap will start with first query,
  -- if you press "keymap2", minimap will start with second query,
  -- you can have empty query table option if you want to use regex only
  query = {
    [[
    ;; query
    ;; ((function_declaration name: ((identifier) @name (#eq? @name "{cursorword}"))) @cap)
    ;; ((function_call name: ((identifier) @name (#eq? @name "{cursorword}"))) @cap)
    ;; ((dot_index_expression field: ((identifier) @name (#eq? @name "{cursorword}"))) @cap)
    ((function_declaration) @cap)
    ((assignment_statement(expression_list((function_definition) @cap))))
    ]],
    1,
    [[
    ;; query
    ((function_declaration) @cap)
    ((assignment_statement(expression_list((function_definition) @cap))))
    ((field (identifier) @cap) (#eq? @cap "keymaps"))
    ]],
    [[
    ;; query
    ((for_statement) @cap)
    ((function_declaration) @cap)
    ((assignment_statement(expression_list((function_definition) @cap))))
    ((function_call (identifier)) @cap (#vim-match? @cap "^__*" ))
    ((function_call (dot_index_expression) @field (#eq? @field "vim.keymap.set")) @cap)
    ]],
    [[
    ;; query
    ((for_statement) @cap)
    ((function_declaration) @cap)
    ((assignment_statement(expression_list((function_definition) @cap))))
    ]],
    -- [[
    --     ;; query
    --     ((function_declaration) @cap)
    --     ((assignment_statement(expression_list((function_definition) @cap))))
    --     ]], -- comments
    -- [[
    --     ;; query
    --     ((function_declaration) @cap)
    --     ((assignment_statement(expression_list((function_definition) @cap))))
    --     ((for_statement) @cap)
    --     ]], -- idk

    -- 1, -- if passed in a number, a query with that index will take it's place
    -- in this case, instead of copying the entire first query,
    -- we use `1` to point to it.
  },

  -- optional
  -- regex = { -- lua table, values inside can be type `table` or `number`
  --   { [[--.*]], [[===.*===]] }, -- first set of regexes
  --   {}, -- no regex
  --   1, -- acts as first regex set
  -- },
  -- you can have empty regex option if you want to use Treesitter queries only

  -- optional
  -- search_patterns = {
  --   { "vim_regex", "<C-j>", true }, -- jump to the next instance of "vim_regex"
  --   { "vim_regex", "<C-k>", false }, -- jump to the previous instance of "vim_regex"
  -- },

  auto_jump = true, -- optional, defaults to `true`, auto jump when move cursor

  -- other options
  width = 44, -- optional, defaults to 44, width of the minimap
  height = 12, -- optional, defaults to 12, height of the minimap
  -- hl_group = "my_hl_group", -- highlight group of virtual text, optional, defaults to "DiagnosticWarn"

  open_win_opts = {}, -- optional, for setting custom `nvim_open_win` options
  win_opts = {}, -- optional, for setting custom `nvim_win_set_option` options

  -- change minimap's height with <C-h>
  -- this means default minimap height is 12
  -- minimap height will change to 36 after pressing <C-h>
  height_toggle = { 12, 36 },

  disable_indentation = false, -- if `true`, will remove any white space / tab at the start of the results.

  -- Replace the placeholder called {cursorword} with the word the cursor is current on
  -- if `false` the keyword {cursorword} will not be replaced in query.
  replace_cursorword_attribute = true,
})
nm.set({ "zj", "zk", "zl" }, { "*.py" }, {
  events = { "BufEnter" },

  -- lua table, values inside can be type `string` or `number`
  -- accepts multiple treesitter queries, corresponse to each keymap,
  -- if you press "keymap1", minimap will start with first query,
  -- if you press "keymap2", minimap will start with second query,
  -- you can have empty query table option if you want to use regex only
  query = {
    [[
    ((function_definition) @cap)
    ]],
    [[
    ((for_statement) @cap)
    ]],
    [[
    ((function_definition) @cap)
    ((for_statement) @cap)
    ]],
    [[
    ((function_definition) @cap)
    ((for_statement) @cap)
    ((assignment_statement) @cap)
    ]],
    [[
    ((function_definition) @cap)
    ((for_statement) @cap)
    ((assignment_statement) @cap)
    ((class_definition) @cap)
    ]],
    [[
    ((function_definition) @cap)
    ((for_statement) @cap)
    ((assignment_statement) @cap)
    ((class_definition)
    ]],
    1,
    [[
    ;; query
    ((for_statement) @cap)
    ((function_declaration) @cap)
    ((assignment_statement(expression_list((function_definition) @cap))))
    ((function_call (identifier)) @cap (#vim-match? @cap "^__*" ))
    ((function_call (dot_index_expression) @field (#eq? @field "vim.keymap.set")) @cap)
    ]],
    [[
    ;; query
    ((for_statement) @cap)
    ((function_declaration) @cap)
    ((assignment_statement(expression_list((function_definition) @cap))))
    ]],
    -- [[
    --     ;; query
    --     ((function_declaration) @cap)
    --     ((assignment_statement(expression_list((function_definition) @cap))))
    --     ]], -- comments
    -- [[
    --     ;; query
    --     ((function_declaration) @cap)
    --     ((assignment_statement(expression_list((function_definition) @cap))))
    --     ((for_statement) @cap)
    --     ]], -- idk

    -- 1, -- if passed in a number, a query with that index will take it's place
    -- in this case, instead of copying the entire first query,
    -- we use `1` to point to it.
  },

  -- optional
  -- regex = { -- lua table, values inside can be type `table` or `number`
  --   -- { [[--.*]], [[===.*===]] }, -- first set of regexes
  --   { "^def" },
  --   {}, -- no regex
  --   1, -- acts as first regex set
  -- },
  -- you can have empty regex option if you want to use Treesitter queries only

  -- optional
  -- search_patterns = {
  --   { "def", "<C-j>", true }, -- jump to the next instance of "vim_regex"
  --   { "def", "<C-k>", false }, -- jump to the previous instance of "vim_regex"
  -- },

  auto_jump = true, -- optional, defaults to `true`, auto jump when move cursor

  -- other options
  width = 44, -- optional, defaults to 44, width of the minimap
  height = 12, -- optional, defaults to 12, height of the minimap
  -- hl_group = "my_hl_group", -- highlight group of virtual text, optional, defaults to "DiagnosticWarn"

  open_win_opts = {}, -- optional, for setting custom `nvim_open_win` options
  win_opts = {}, -- optional, for setting custom `nvim_win_set_option` options

  -- change minimap's height with <C-h>
  -- this means default minimap height is 12
  -- minimap height will change to 36 after pressing <C-h>
  height_toggle = { 12, 36 },

  disable_indentation = false, -- if `true`, will remove any white space / tab at the start of the results.

  -- Replace the placeholder called {cursorword} with the word the cursor is current on
  -- if `false` the keyword {cursorword} will not be replaced in query.
  replace_cursorword_attribute = true,
})
