-- autocmd to not auto comment new line
vim.cmd('autocmd BufEnter * set fo-=c fo-=r fo-=o')

lvim.autocommands = {
  {
    { "BufEnter" },
    {
      group = buff,
      pattern = "sxhkdrc",
      command = "set filetype=sxhkdrc"
    }
  },
  -- {
  --   { "CursorMoved" },
  --   {
  --     group = cursor,
  --     pattern = "*",
  --     callback = function ()
  --       vim.cmd("set nohlsearch")
  --     end
  --     -- command = "noh"
  --   }
  -- },
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
