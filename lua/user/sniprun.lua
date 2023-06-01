local status_ok, sniprun = pcall(require, "sniprun")
if not status_ok then
	return
end

sniprun.setup({
	live_mode_toggle = "enable",
	-- live_display = { "VirtualText", "TerminalOk" },
	live_display = { "VirtualText" },
})
