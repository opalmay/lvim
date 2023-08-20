lvim.builtin.which_key.setup.plugins.presets.windows = true

lvim.builtin.which_key.mappings["g"]["B"] = { ":GitBlameToggle<CR>", "Git Blame" }
lvim.builtin.which_key.mappings["l"]["t"] = { ":TroubleToggle<CR>", "Trouble" }
lvim.builtin.which_key.mappings["l"]["b"] = { ":ToggleDiag<CR>", "Toggle Diag" }
-- lvim.builtin.which_key.mappings["p"] = { ":Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["v"] = { ":Telescope neoclip<CR>", "NeoClip" }
-- lvim.builtin.which_key.mappings["v"] = { ":vs<CR>", "Vertical Split" }
-- lvim.builtin.which_key.mappings["v"] = { ":Telescope yank_history<CR>", "Yank History" }
lvim.builtin.which_key.mappings["o"] = {
  l = { ":set rnu!<CR>", "Toggle Relative Line Numbers" },
  t = { ':let &background = ( &background == "dark"? "light" : "dark" )<CR>', "Toggle Dark Theme" },
  c = { ":lua require('copilot.suggestion').toggle_auto_trigger()<CR>", "Toggle Copilot Auto Trigger" },
  s = { "set spell!<CR>", "Toggle Spell Check" },
}
-- lvim.builtin.which_key.mappings["D"] = {
-- 	name = "Database",
-- 	u = { "<Cmd>DBUIToggle<Cr>", "Toggle UI" },
-- 	f = { "<Cmd>DBUIFindBuffer<Cr>", "Find buffer" },
-- 	r = { "<Cmd>DBUIRenameBuffer<Cr>", "Rename buffer" },
-- 	q = { "<Cmd>DBUILastQueryInfo<Cr>", "Last query info" },
-- }
lvim.builtin.which_key.mappings["a"] = { ":lua require('harpoon.mark').add_file()<CR>", "Harpoon Add" }
-- lvim.builtin.which_key.mappings["t"] = { ":silent !bspc rule -a kitty state=floating -o && kitty -e zsh -is eval \"cd $(pwd)\" & <CR>", "Floating Term" }

lvim.builtin.which_key.mappings["y"] = { ":ToggleTerm<CR>", "Toggle Term" }
lvim.builtin.which_key.mappings["i"] = { ":lua require('nvim-toggler').toggle()<CR>", "Invert Word" }

-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["p"] = nil
-- lvim.builtin.which_key.mappings["D"] = lvim.builtin.which_key.mappings["d"]
lvim.builtin.which_key.mappings["d"]["U"] = { "<cmd>lua require('dapui').toggle(2)<cr>", "Toggle UI" }
lvim.builtin.which_key.mappings["d"]["I"] = { "<cmd>lua require('dapui').toggle()<cr>", "Toggle all UI" }
lvim.builtin.which_key.mappings["d"]["t"] =
{ "<cmd>lua require('persistent-breakpoints.api').toggle_breakpoint()<cr>", "Toggle Breakpoint" }
lvim.builtin.which_key.mappings["d"]["T"] =
{ "<cmd>lua require('persistent-breakpoints.api').set_conditional_breakpoint()<cr>", "Clear All Breakpoints" }
lvim.builtin.which_key.mappings["d"]["R"] =
{ "<cmd>lua require('persistent-breakpoints.api').clear_all_breakpoints()<cr>", "Clear All Breakpoints" }

lvim.builtin.which_key.mappings["c"] = nil
lvim.builtin.which_key.mappings["m"] = lvim.builtin.which_key.mappings["s"]
-- lvim.builtin.which_key.mappings["s"] = { "<cmd>SymbolsOutline<cr>", "Symbols Outline" }
lvim.builtin.which_key.mappings["s"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Telescope Buffer Fuzzy Find" }
-- lvim.builtin.which_key.mappings["R"] = { ":SnipRun<CR>", "SnipRun" }

-- lvim.builtin.which_key.mappings["d"] = {
--   b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint" },
--   c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
--   i = { "<cmd>lua require'dap'.step_into()<cr>", "Into" },
--   o = { "<cmd>lua require'dap'.step_over()<cr>", "Over" },
--   O = { "<cmd>lua require'dap'.step_out()<cr>", "Out" },
--   r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Repl" },
--   l = { "<cmd>lua require'dap'.run_last()<cr>", "Last" },
--   u = { "<cmd>lua require'dapui'.toggle()<cr>", "UI" },
--   x = { "<cmd>lua require'dap'.terminate()<cr>", "Exit" }
-- }

local keymap = lvim.builtin.which_key.mappings

-- keymap["t"] = keymap["e"]
keymap["e"] = { "<cmd>Oil --float<cr>", "Oil" }

keymap["r"] = { name = "SearchReplaceSingleBuffer" }

keymap["r"]["s"] = { "<CMD>SearchReplaceSingleBufferSelections<CR>", "SearchReplaceSingleBuffer [s]elction list" }
keymap["r"]["o"] = { "<CMD>SearchReplaceSingleBufferOpen<CR>", "[o]pen" }
keymap["r"]["w"] = { "<CMD>SearchReplaceSingleBufferCWord<CR>", "[w]ord" }
keymap["r"]["W"] = { "<CMD>SearchReplaceSingleBufferCWORD<CR>", "[W]ORD" }
keymap["r"]["e"] = { "<CMD>SearchReplaceSingleBufferCExpr<CR>", "[e]xpr" }
keymap["r"]["f"] = { "<CMD>SearchReplaceSingleBufferCFile<CR>", "[f]ile" }

keymap["r"]["b"] = { name = "SearchReplaceMultiBuffer" }

keymap["r"]["b"]["s"] = { "<CMD>SearchReplaceMultiBufferSelections<CR>", "SearchReplaceMultiBuffer [s]elction list" }
keymap["r"]["b"]["o"] = { "<CMD>SearchReplaceMultiBufferOpen<CR>", "[o]pen" }
keymap["r"]["b"]["w"] = { "<CMD>SearchReplaceMultiBufferCWord<CR>", "[w]ord" }
keymap["r"]["b"]["W"] = { "<CMD>SearchReplaceMultiBufferCWORD<CR>", "[W]ORD" }
keymap["r"]["b"]["e"] = { "<CMD>SearchReplaceMultiBufferCExpr<CR>", "[e]xpr" }
keymap["r"]["b"]["f"] = { "<CMD>SearchReplaceMultiBufferCFile<CR>", "[f]ile" }

lvim.keys.visual_block_mode["<C-r>"] = [[<CMD>SearchReplaceSingleBufferVisualSelection<CR>]]
lvim.keys.visual_block_mode["<C-b>"] = [[<CMD>SearchReplaceWithinVisualSelectionCWord<CR>]]
