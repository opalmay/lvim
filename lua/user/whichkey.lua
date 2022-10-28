lvim.builtin.which_key.mappings["g"]["B"] = { ":GitBlameToggle<CR>", "Git Blame" }
lvim.builtin.which_key.mappings["l"]["t"] = { ":TroubleToggle<CR>", "Trouble" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["D"] = {
	name = "Database",
	u = { "<Cmd>DBUIToggle<Cr>", "Toggle UI" },
	f = { "<Cmd>DBUIFindBuffer<Cr>", "Find buffer" },
	r = { "<Cmd>DBUIRenameBuffer<Cr>", "Rename buffer" },
	q = { "<Cmd>DBUILastQueryInfo<Cr>", "Last query info" },
}

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
