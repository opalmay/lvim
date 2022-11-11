local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = '/usr/local/netcoredbg',
  args = { '--interpreter=vscode' }
}
-- dap.configurations.cs = {
--   {
--     type = "coreclr",
--     name = "launch - netcoredbg",
--     request = "launch",
--     program = function() return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/net6.0/', 'file')
--     end,
--   },
-- }
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

vim.g.dotnet_build_project = function()
  -- local default_path = vim.fn.getcwd() .. '/'
  -- if vim.g['dotnet_last_proj_path'] ~= nil then
  --     default_path = vim.g['dotnet_last_proj_path']
  -- end
  -- local path = vim.fn.input('Path to your *proj file', default_path, 'file')
  -- local command = 'ls ' .. vim.fn.getcwd() .. ' *.csproj'
  -- print(command)
  local path = io.popen('ls ' .. vim.fn.getcwd() .. '/*.csproj'):read('*a')
  -- print('path:' .. path)
  -- vim.g['dotnet_last_proj_path'] = path
  local cmd = 'dotnet build -c Debug ' .. path --.. ' &> /dev/null'
  local f = io.popen(cmd):read('*a')
  -- print(f)
  -- if f == 0 then
  --     print('\nBuild: ✔️ ')
  -- else
  --     print('\nBuild: ❌ (code: ' .. f .. ')')
  -- end
end

vim.g.dotnet_get_dll_path = function()
  -- local request = function()
  --     return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/net6.0/', 'file')
  -- end

  -- if vim.g['dotnet_last_dll_path'] == nil then
  -- vim.g['dotnet_last_dll_path'] = request()
  -- else
  --     if vim.fn.confirm('Do you want to change the path to dll?\n' .. vim.g['dotnet_last_dll_path'], '&yes\n&no', 2) == 1 then
  --         vim.g['dotnet_last_dll_path'] = request()
  --     end
  -- end
  -- return vim.g['dotnet_last_dll_path']
  -- local path = io.popen('ls ' .. vim.fn.getcwd() .. '/bin/Debug/net6.0/*.dll'):read('*a'):gsub('~', '/home/opal')
  -- local path = io.popen('ls ' .. vim.fn.getcwd() .. '/bin/Debug/net6.0/*.dll'):read('*a')
  return '/home/opal/Documents/projects/dotnettest/bin/Debug/net6.0/dotnettest.dll'
  -- print(path)
  -- return path
  -- return io.popen(path):read('*a')
  -- return '/home/opal/.tmp/dotnettest3/bin/Debug/net6.0/dotnettest3.dll'
end

local config = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
      -- if vim.fn.confirm('Should I recompile first?', '&yes\n&no', 2) == 1 then
      vim.g.dotnet_build_project()
      -- end
      return vim.g.dotnet_get_dll_path()
    end,
  },
}

dap.configurations.cs = config
dap.configurations.fsharp = config
