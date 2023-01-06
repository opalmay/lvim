require("nvim-toggler").setup({
  -- your own inverses
  inverses = {
    ["True"] = "False"
  },
  -- removes the default <leader>i keymap
  remove_default_keybinds = true,
  -- removes the default set of inverses
  remove_default_inverses = false,
})
