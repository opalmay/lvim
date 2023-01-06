-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/opal/.cache/lvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/opal/.cache/lvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/opal/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/opal/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/opal/.cache/lvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nñ\3\0\0\v\0\23\00166\0\0\0'\2\1\0B\0\2\0024\1\0\0006\2\2\0009\2\3\0029\2\4\0029\2\5\0029\2\6\2\15\0\2\0X\3\f€\21\2\1\0\22\2\0\0029\3\a\0006\5\b\0B\5\1\2'\6\t\0'\a\n\0'\b\v\0'\t\f\0'\n\r\0B\3\a\2<\3\2\0019\2\a\0006\4\14\0B\4\1\2'\5\15\0B\2\3\0029\3\16\0\18\5\2\0B\3\2\2\15\0\3\0X\4\3€\21\3\1\0\22\3\0\3<\2\3\0016\3\0\0'\5\17\0B\3\2\0029\3\18\3B\3\1\0016\3\0\0'\5\19\0B\3\2\0029\3\18\0035\5\20\0=\1\21\5B\3\2\0016\3\0\0'\5\22\0B\3\2\0029\3\18\3B\3\1\1K\0\1\0\"luasnip.loaders.from_snipmate\npaths\1\0\0 luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\17is_directory\rsnippets\19get_config_dir\22friendly-snippets\nstart\vpacker\tpack\tsite\20get_runtime_dir\15join_paths\22friendly_snippets\fsources\fluasnip\fbuiltin\tlvim\15lvim.utils\frequire\2\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["actually.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/actually.nvim",
    url = "https://github.com/mong8se/actually.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.alpha\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["autolist.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18user.autolist\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/autolist.nvim",
    url = "https://github.com/gaoDean/autolist.nvim"
  },
  ["bigfile.nvim"] = {
    config = { "\27LJ\2\nS\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\3\0009\2\4\0029\2\1\0029\2\2\2B\0\2\1K\0\1\0\fbuiltin\tlvim\vconfig\fbigfile\frequire\30\1\0\3\0\2\0\0046\0\0\0003\2\1\0B\0\2\1K\0\1\0\0\npcall\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/bigfile.nvim",
    url = "https://github.com/lunarvim/bigfile.nvim"
  },
  ["cellular-automaton.nvim"] = {
    commands = { "CellularAutomaton" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/cellular-automaton.nvim",
    url = "https://github.com/Eandrju/cellular-automaton.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/opal/.local/share/lunarvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot-cmp"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16copilot_cmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/copilot-cmp",
    url = "https://github.com/zbirenbaum/copilot-cmp"
  },
  ["copilot.lua"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.copilot\frequire-\1\0\4\0\3\0\0066\0\0\0009\0\1\0003\2\2\0)\3d\0B\0\3\1K\0\1\0\0\rdefer_fn\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["duck.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/duck.nvim",
    url = "https://github.com/tamton-aquib/duck.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["git-blame.nvim"] = {
    commands = { "GitBlameToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["glance.nvim"] = {
    commands = { "Glance" },
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vglance\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/glance.nvim",
    url = "https://github.com/DNLHC/glance.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.indentlines\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["jaq-nvim"] = {
    commands = { "Jaq" },
    config = { "\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\ruser.jaq\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/jaq-nvim",
    url = "https://github.com/is0n/jaq-nvim"
  },
  ["leap.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["live-command.nvim"] = {
    commands = { "Norm" },
    config = { "\27LJ\2\nn\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\rcommands\1\0\0\tNorm\1\0\0\1\0\1\bcmd\tnorm\nsetup\17live-command\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/live-command.nvim",
    url = "https://github.com/smjonas/live-command.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["lunar.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/lunar.nvim",
    url = "https://github.com/lunarvim/lunar.nvim"
  },
  ["markdown-preview.nvim"] = {
    commands = { "MarkdownPreview" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.mason\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fmini.ai\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["neo-minimap"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21user.neo-minimap\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/neo-minimap",
    url = "https://github.com/ziontee113/neo-minimap"
  },
  ["neodev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/opalmay/neoscroll.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["notifier.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rnotifier\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/notifier.nvim",
    url = "https://github.com/vigoux/notifier.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  nvim = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim",
    url = "https://github.com/catppuccin/nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n`\0\0\3\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5€6\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-config-local"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17config-local\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-config-local",
    url = "https://github.com/klen/nvim-config-local"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lvim.core.dap\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/nvim-dap-python",
    url = "https://github.com/mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rsetup_ui\18lvim.core.dap\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    commands = { "DapVirtualTextToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.breadcrumbs\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-spectre"] = {
    commands = { "Spectre" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/nvim-spectre",
    url = "https://github.com/nvim-pack/nvim-spectre"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-toggler"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.toggler\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/nvim-toggler",
    url = "https://github.com/nguyenvukhang/nvim-toggler"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-treesitter-textsubjects"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter-textsubjects",
    url = "https://github.com/RRethy/nvim-treesitter-textsubjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["openingh.nvim"] = {
    commands = { "OpenInGHRepo", "OpenInGHFile" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/openingh.nvim",
    url = "https://github.com/almo7aya/openingh.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["search-replace.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19search-replace\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/search-replace.nvim",
    url = "https://github.com/roobert/search-replace.nvim"
  },
  ["stay-in-place.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18stay-in-place\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/stay-in-place.nvim",
    url = "https://github.com/gbprod/stay-in-place.nvim"
  },
  ["stickybuf.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/stickybuf.nvim",
    url = "https://github.com/stevearc/stickybuf.nvim"
  },
  ["structlog.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/structlog.nvim",
    url = "https://github.com/Tastyep/structlog.nvim"
  },
  ["stuff.nvim"] = {
    commands = { "Calc" },
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tcalc\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/stuff.nvim",
    url = "https://github.com/tamton-aquib/stuff.nvim"
  },
  ["substitute.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20user.substitute\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/substitute.nvim",
    url = "https://github.com/gbprod/substitute.nvim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline", "SymbolsOutlineOpen", "SymbolsOutlineClose" },
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20symbols-outline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.telescope\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "TroubleToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    commands = { "UndotreeToggle" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-EnhancedJumps"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/vim-EnhancedJumps",
    url = "https://github.com/opalmay/vim-EnhancedJumps"
  },
  ["vim-be-good"] = {
    commands = { "VimBeGood" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-buffest"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/vim-buffest",
    url = "https://github.com/rbong/vim-buffest"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.illuminate\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-log-highlighting"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/vim-log-highlighting",
    url = "https://github.com/MTDL9/vim-log-highlighting"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-python-pep8-indent"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/vim-python-pep8-indent",
    url = "https://github.com/Vimjas/vim-python-pep8-indent"
  },
  ["vim-smoothie"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/vim-smoothie",
    url = "https://github.com/opalmay/vim-smoothie"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["yanky.nvim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15user.yanky\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/opt/yanky.nvim",
    url = "https://github.com/gbprod/yanky.nvim"
  },
  ["zone.nvim"] = {
    config = { "\27LJ\2\n¢\1\0\0\4\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\2B\0\2\1K\0\1\0\bdvd\repilepsy\1\0\1\nstage\taura\14treadmill\1\0\1\14direction\tleft\1\0\2\nstyle\14treadmill\nafter\3àÔ\3\nsetup\tzone\frequire\0" },
    loaded = true,
    path = "/home/opal/.local/share/lunarvim/site/pack/packer/start/zone.nvim",
    url = "https://github.com/tamton-aquib/zone.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^neodev"] = "neodev.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: notifier.nvim
time([[Config for notifier.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rnotifier\frequire\0", "config", "notifier.nvim")
time([[Config for notifier.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-navic
time([[Config for nvim-navic]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.breadcrumbs\frequire\0", "config", "nvim-navic")
time([[Config for nvim-navic]], false)
-- Config for: zone.nvim
time([[Config for zone.nvim]], true)
try_loadstring("\27LJ\2\n¢\1\0\0\4\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0024\3\0\0=\3\b\2B\0\2\1K\0\1\0\bdvd\repilepsy\1\0\1\nstage\taura\14treadmill\1\0\1\14direction\tleft\1\0\2\nstyle\14treadmill\nafter\3àÔ\3\nsetup\tzone\frequire\0", "config", "zone.nvim")
time([[Config for zone.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: neo-minimap
time([[Config for neo-minimap]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21user.neo-minimap\frequire\0", "config", "neo-minimap")
time([[Config for neo-minimap]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lvim.core.dap\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: search-replace.nvim
time([[Config for search-replace.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19search-replace\frequire\0", "config", "search-replace.nvim")
time([[Config for search-replace.nvim]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fmini.ai\frequire\0", "config", "mini.nvim")
time([[Config for mini.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.alpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.illuminate\frequire\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n`\0\0\3\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5€6\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rsetup_ui\18lvim.core.dap\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: bigfile.nvim
time([[Config for bigfile.nvim]], true)
try_loadstring("\27LJ\2\nS\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\3\0009\2\4\0029\2\1\0029\2\2\2B\0\2\1K\0\1\0\fbuiltin\tlvim\vconfig\fbigfile\frequire\30\1\0\3\0\2\0\0046\0\0\0003\2\1\0B\0\2\1K\0\1\0\0\npcall\0", "config", "bigfile.nvim")
time([[Config for bigfile.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20lvim.core.mason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-config-local
time([[Config for nvim-config-local]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17config-local\frequire\0", "config", "nvim-config-local")
time([[Config for nvim-config-local]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26lvim.core.indentlines\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nñ\3\0\0\v\0\23\00166\0\0\0'\2\1\0B\0\2\0024\1\0\0006\2\2\0009\2\3\0029\2\4\0029\2\5\0029\2\6\2\15\0\2\0X\3\f€\21\2\1\0\22\2\0\0029\3\a\0006\5\b\0B\5\1\2'\6\t\0'\a\n\0'\b\v\0'\t\f\0'\n\r\0B\3\a\2<\3\2\0019\2\a\0006\4\14\0B\4\1\2'\5\15\0B\2\3\0029\3\16\0\18\5\2\0B\3\2\2\15\0\3\0X\4\3€\21\3\1\0\22\3\0\3<\2\3\0016\3\0\0'\5\17\0B\3\2\0029\3\18\3B\3\1\0016\3\0\0'\5\19\0B\3\2\0029\3\18\0035\5\20\0=\1\21\5B\3\2\0016\3\0\0'\5\22\0B\3\2\0029\3\18\3B\3\1\1K\0\1\0\"luasnip.loaders.from_snipmate\npaths\1\0\0 luasnip.loaders.from_vscode\14lazy_load\29luasnip.loaders.from_lua\17is_directory\rsnippets\19get_config_dir\22friendly-snippets\nstart\vpacker\tpack\tsite\20get_runtime_dir\15join_paths\22friendly_snippets\fsources\fluasnip\fbuiltin\tlvim\15lvim.utils\frequire\2\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'DapVirtualTextToggle', function(cmdargs)
          require('packer.load')({'nvim-dap-virtual-text'}, { cmd = 'DapVirtualTextToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-dap-virtual-text'}, { cmd = 'DapVirtualTextToggle' }, _G.packer_plugins)
          return vim.fn.getcompletion('DapVirtualTextToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'SymbolsOutline', function(cmdargs)
          require('packer.load')({'symbols-outline.nvim'}, { cmd = 'SymbolsOutline', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'symbols-outline.nvim'}, { cmd = 'SymbolsOutline' }, _G.packer_plugins)
          return vim.fn.getcompletion('SymbolsOutline ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'SymbolsOutlineOpen', function(cmdargs)
          require('packer.load')({'symbols-outline.nvim'}, { cmd = 'SymbolsOutlineOpen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'symbols-outline.nvim'}, { cmd = 'SymbolsOutlineOpen' }, _G.packer_plugins)
          return vim.fn.getcompletion('SymbolsOutlineOpen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'SymbolsOutlineClose', function(cmdargs)
          require('packer.load')({'symbols-outline.nvim'}, { cmd = 'SymbolsOutlineClose', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'symbols-outline.nvim'}, { cmd = 'SymbolsOutlineClose' }, _G.packer_plugins)
          return vim.fn.getcompletion('SymbolsOutlineClose ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'UndotreeToggle', function(cmdargs)
          require('packer.load')({'undotree'}, { cmd = 'UndotreeToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'undotree'}, { cmd = 'UndotreeToggle' }, _G.packer_plugins)
          return vim.fn.getcompletion('UndotreeToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Spectre', function(cmdargs)
          require('packer.load')({'nvim-spectre'}, { cmd = 'Spectre', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-spectre'}, { cmd = 'Spectre' }, _G.packer_plugins)
          return vim.fn.getcompletion('Spectre ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CellularAutomaton', function(cmdargs)
          require('packer.load')({'cellular-automaton.nvim'}, { cmd = 'CellularAutomaton', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'cellular-automaton.nvim'}, { cmd = 'CellularAutomaton' }, _G.packer_plugins)
          return vim.fn.getcompletion('CellularAutomaton ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Calc', function(cmdargs)
          require('packer.load')({'stuff.nvim'}, { cmd = 'Calc', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'stuff.nvim'}, { cmd = 'Calc' }, _G.packer_plugins)
          return vim.fn.getcompletion('Calc ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'GitBlameToggle', function(cmdargs)
          require('packer.load')({'git-blame.nvim'}, { cmd = 'GitBlameToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'git-blame.nvim'}, { cmd = 'GitBlameToggle' }, _G.packer_plugins)
          return vim.fn.getcompletion('GitBlameToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'OpenInGHRepo', function(cmdargs)
          require('packer.load')({'openingh.nvim'}, { cmd = 'OpenInGHRepo', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'openingh.nvim'}, { cmd = 'OpenInGHRepo' }, _G.packer_plugins)
          return vim.fn.getcompletion('OpenInGHRepo ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'OpenInGHFile', function(cmdargs)
          require('packer.load')({'openingh.nvim'}, { cmd = 'OpenInGHFile', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'openingh.nvim'}, { cmd = 'OpenInGHFile' }, _G.packer_plugins)
          return vim.fn.getcompletion('OpenInGHFile ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'MarkdownPreview', function(cmdargs)
          require('packer.load')({'markdown-preview.nvim'}, { cmd = 'MarkdownPreview', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'markdown-preview.nvim'}, { cmd = 'MarkdownPreview' }, _G.packer_plugins)
          return vim.fn.getcompletion('MarkdownPreview ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Glance', function(cmdargs)
          require('packer.load')({'glance.nvim'}, { cmd = 'Glance', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'glance.nvim'}, { cmd = 'Glance' }, _G.packer_plugins)
          return vim.fn.getcompletion('Glance ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'VimBeGood', function(cmdargs)
          require('packer.load')({'vim-be-good'}, { cmd = 'VimBeGood', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-be-good'}, { cmd = 'VimBeGood' }, _G.packer_plugins)
          return vim.fn.getcompletion('VimBeGood ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'TroubleToggle', function(cmdargs)
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'trouble.nvim'}, { cmd = 'TroubleToggle' }, _G.packer_plugins)
          return vim.fn.getcompletion('TroubleToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Norm', function(cmdargs)
          require('packer.load')({'live-command.nvim'}, { cmd = 'Norm', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'live-command.nvim'}, { cmd = 'Norm' }, _G.packer_plugins)
          return vim.fn.getcompletion('Norm ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Jaq', function(cmdargs)
          require('packer.load')({'jaq-nvim'}, { cmd = 'Jaq', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'jaq-nvim'}, { cmd = 'Jaq' }, _G.packer_plugins)
          return vim.fn.getcompletion('Jaq ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType tex ++once lua require("packer.load")({'autolist.nvim'}, { ft = "tex" }, _G.packer_plugins)]]
vim.cmd [[au FileType log ++once lua require("packer.load")({'vim-log-highlighting'}, { ft = "log" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'nvim-dap-python', 'vim-python-pep8-indent'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType text ++once lua require("packer.load")({'autolist.nvim'}, { ft = "text" }, _G.packer_plugins)]]
vim.cmd [[au FileType plaintex ++once lua require("packer.load")({'autolist.nvim'}, { ft = "plaintex" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim', 'autolist.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'copilot.lua'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'which-key.nvim', 'toggleterm.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'lsp_signature.nvim', 'copilot-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-ts-context-commentstring'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-surround', 'vim-EnhancedJumps', 'gitsigns.nvim', 'stickybuf.nvim', 'stay-in-place.nvim', 'Comment.nvim', 'nvim-colorizer.lua', 'neoscroll.nvim', 'vim-buffest', 'todo-comments.nvim', 'vim-smoothie', 'substitute.nvim', 'nvim-toggler', 'yanky.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au CmdLineEnter * ++once lua require("packer.load")({'cmp-cmdline'}, { event = "CmdLineEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/opal/.local/share/lunarvim/site/pack/packer/opt/vim-log-highlighting/ftdetect/log.vim]], true)
vim.cmd [[source /home/opal/.local/share/lunarvim/site/pack/packer/opt/vim-log-highlighting/ftdetect/log.vim]]
time([[Sourcing ftdetect script at: /home/opal/.local/share/lunarvim/site/pack/packer/opt/vim-log-highlighting/ftdetect/log.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
