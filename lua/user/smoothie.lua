-- vim.g.smoothie_speed_linear_factor = 1
-- vim.g.smoothie_speed_constant_factor = 1
-- vim.g.smoothie_update_interval = 20
if vim.g.neovide then
  vim.g.smoothie_remapped_commands = { 'zz', 'H', 'M', 'L', '{', '}', 'j', 'k', '<ScrollWheelDown>', '<ScrollWheelUp>',
    '#', '*' }
else
  vim.g.smoothie_remapped_commands = { 'zz', 'H', 'M', 'L', '{', '}', 'j', 'k', '<ScrollWheelDown>', '<ScrollWheelUp>',
    'n', 'N', '#', '*' }
  -- vim.g.smoothie_remapped_commands = { 'H', 'M', 'L', '{', '}', 'j', 'k', '<ScrollWheelDown>', '<ScrollWheelUp>',
  --   'n', 'N', '#', '*', "<C-u>", "<C-d>", "<C-b>", "<C-f>", "zz", "zb" }
  require("neoscroll").setup({
    scroll_past_bottom = false,
    hide_cursor = not vim.g.neovide,
    easing_function = "cubic",
    mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>" },
  })
end
-- vim.g.smoothie_speed_exponentiation_factor = 0.7
-- vim.g.smoothie_enabled = false
vim.g.smoothie_hide_cursor = not vim.g.neovide
