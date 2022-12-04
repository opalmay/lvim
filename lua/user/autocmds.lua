lvim.autocommands = {
  {
    { "BufEnter" },
    {
      group = buff,
      pattern = "sxhkdrc",
      command = "set filetype=sxhkdrc"
    }
  },
  {
    { "TextYankPost" },
    {
      group = yank_group,
      pattern = "*",
      callback = function()
        vim.highlight.on_yank({
          higroup = "IncSearch",
          timeout = 40,
        })
      end,
    },
  },
  -- Add last insert position to jump list
  {
    { "InsertLeave" },
    {
      group = insert_group,
      pattern = "*",
      callback = function()
        vim.cmd("norm m`")
      end,
    },
  },
}
