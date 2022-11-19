vim.tbl_deep_extend("force", {
  defaults = {
    -- layout_strategy = "horizontal",
  },
  pickers = {
    neoclip = {
      layout_strategy = "vertical",
    }
  },
}, lvim.builtin.telescope)

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "neoclip")
end
