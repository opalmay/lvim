local status_ok, sniprun = pcall(require, "sniprun")
if not status_ok then
  return
end

sniprun.setup({
  live_mode_toggle = "enable",
  live_display = { "VirtualText", "TerminalOk" },
  -- live_display = { "VirtualText" },
  interpreter_options = {
    Generic = {
      PowerShellCore = {
        supported_filetypes = { "powershell", "ps1" },
        extension = ".ps1",
        interpreter = "pwsh",
        -- compiler = "",
        -- exe_name = "",
        -- boilerplate = ""
      },
    }
  },
  -- repl_enable = { "PowerShellCore", "Generic" },
  -- selected_interpreters = { "PowerShellCore", "Generic" },
})
