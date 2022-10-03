local status_ok, neoscroll = pcall(require, "neoscroll")
if not status_ok then
	return
end

neoscroll.setup({
    easing_function = "cubic",
    mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "zt", "zz", "zb" },
})
