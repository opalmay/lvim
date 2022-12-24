lvim.builtin.which_key.setup.plugins.presets.windows = true

lvim.builtin.which_key.mappings["g"]["B"] = { ":GitBlameToggle<CR>", "Git Blame" }
lvim.builtin.which_key.mappings["l"]["t"] = { ":TroubleToggle<CR>", "Trouble" }
lvim.builtin.which_key.mappings["l"]["b"] = { ":ToggleDiag<CR>", "Toggle Diag" }
lvim.builtin.which_key.mappings["p"] = { ":Telescope zoxide list<CR>", "Zoxide" }
-- lvim.builtin.which_key.mappings["v"] = { ":Telescope neoclip<CR>", "NeoClip" }
lvim.builtin.which_key.mappings["v"] = { ":vs<CR>", "Vertical Split" }
lvim.builtin.which_key.mappings["v"] = { ":Telescope yank_history<CR>", "Yank History" }
lvim.builtin.which_key.mappings["o"] = {
  l =  { ":set rnu!<CR>", "Toggle Relative Line Numbers" },
  t = { ':let &background = ( &background == "dark"? "light" : "dark" )<CR>', "Toggle Dark Theme" }
}
-- lvim.builtin.which_key.mappings["D"] = {
-- 	name = "Database",
-- 	u = { "<Cmd>DBUIToggle<Cr>", "Toggle UI" },
-- 	f = { "<Cmd>DBUIFindBuffer<Cr>", "Find buffer" },
-- 	r = { "<Cmd>DBUIRenameBuffer<Cr>", "Rename buffer" },
-- 	q = { "<Cmd>DBUILastQueryInfo<Cr>", "Last query info" },
-- }
lvim.builtin.which_key.mappings["a"] = { ":lua require('harpoon.mark').add_file()<CR>", "Harpoon Add" }
lvim.builtin.which_key.mappings["t"] = { ":silent !bspc rule -a kitty state=floating -o && kitty -e zsh -is eval \"cd $(pwd)\" & <CR>", "Floating Term" }


-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["p"] = nil
-- lvim.builtin.which_key.mappings["D"] = lvim.builtin.which_key.mappings["d"]
lvim.builtin.which_key.mappings["d"] = nil
lvim.builtin.which_key.mappings["c"] = nil
-- lvim.builtin.which_key.mappings["R"] = { ":SnipRun<CR>", "SnipRun" }

--     lvim.builtin.which_key.mappings["d"] = {
--     b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint" },
--     c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
--     i = { "<cmd>lua require'dap'.step_into()<cr>", "Into" },
--     o = { "<cmd>lua require'dap'.step_over()<cr>", "Over" },
--     O = { "<cmd>lua require'dap'.step_out()<cr>", "Out" },
--     r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Repl" },
--     l = { "<cmd>lua require'dap'.run_last()<cr>", "Last" },
--     u = { "<cmd>lua require'dapui'.toggle()<cr>", "UI" },
--     x = { "<cmd>lua require'dap'.terminate()<cr>", "Exit" }
-- }
