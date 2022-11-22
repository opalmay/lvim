--local term_opts = { silent = true }

-- Shorten function name
-- local map = vim.api.nvim_set_keymap
local map = function(mode, bind, action)
  -- local opts = { noremap = true, silent = true }
  -- vim.keymap.set(mode, bind, action, opts)
  local key
  if mode == "n" then
    key = "normal_mode"
  elseif mode == "v" then
    key = "visual_mode"
  elseif mode == "x" then
    key = "visual_block_mode"
  elseif mode == "i" then
    key = "insert_mode"
  elseif mode == "t" then
    key = "term_mode"
  elseif mode == "c" then
    key = "command_mode"
  end
  lvim.keys[key][bind] = action
end

--Remap space as leader key
-- map("", "<Space>", "<Nop>")
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- For hlslens n after noh
-- Probs need to disable other find plug
map("n", "n", "<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>zz")
map("n", "N", "<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>zz")

map("n", "<Left>", "<C-w>h")
map("n", "<Down>", "<C-w>j")
map("n", "<Up>", "<C-w>k")
map("n", "<Right>", "<C-w>l")

-- map("n", "<M-h>", "<C-w>h")
-- map("n", "<M-j>", "<C-w>j")
-- map("n", "<M-k>", "<C-w>k")
-- map("n", "<M-l>", "<C-w>l")

-- map("t", "<M-h>", "<C-w>h")
-- map("t", "<M-j>", "<C-w>j")
-- map("t", "<M-k>", "<C-w>k")
-- map("t", "<M-l>", "<C-w>l")

-- Navigate buffers
-- map("n", "J", ":BufferPrevious<CR>")
-- map("n", "K", ":BufferNext<CR>")

map("n", "<leader>cd", ":cd %:p:h<CR>")

-- map("n", "n", "nzzzv")
-- map("n", "N", "Nzzzv")
-- map("n", "J", "mzJ`z")

-- Space q to quit
-- map("n", "<leader>q", ":q <CR>")
-- map("n", "<leader>q", ":Bdelete<CR>")
-- map("n", "<leader>/", "gcc")
-- Replace all occurrences of a word
-- map("n", "<leader>ra", ":%vs/\\<<C-r><C-w>\\>/")
map("n", "<leader>ra", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- map("n", "U", '/<C-r><C-w><CR>')

-- Close current buffer
-- map("n", "Q", ":Bdelete<CR>")

map("n", "<ESC>", ":noh<CR><ESC>")

map("n", "p", "p==")
map("n", "<C-s>", ":w<CR>")
map("i", "<C-s>", "<ESC>:w<CR>")

-- Insert --

map("i", ",", ",<C-g>u")
map("i", ".", ".<C-g>u")
map("i", "?", "?<C-g>u")
map("i", "!", "!<C-g>u")
map("i", "[", "[<C-g>u")
map("i", "{", "{<C-g>u")
-- map("i", "=", "{<C-g>u")
map("i", "<CR>", "{<C-g>u")

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move text up and down
-- map("v", "J", ":m .+1<CR>==")
-- map("v", "K", ":m .-2<CR>==")

-- map("v", "p", '"_dP')
map("v", "<M-p>", '"_dP')

-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv=gv")
map("x", "K", ":move '<-2<CR>gv=gv")

-- map("n", "<leader>f", "<cmd>Telescope find_files<cr>")
map("n", "<c-t>", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>ps", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>")

-- map("n", "<leader>t", ":TroubleToggle<CR>")
-- map("n", "<leader>t", ":ToggleTerm<CR>")
-- map("n", "<leader>t", ':silent !bspc rule -a St state=floating -o && st -e zsh -is eval "cd $(pwd)" & <CR>')
-- map("n", "<leader>t", ':silent !bspc rule -a kitty state=floating -o && kitty -e zsh -is eval "cd $(pwd)" & <CR>')

map("n", "0", "^")
map("v", "0", "^")
map("x", "0", "^")
map("n", "^", "0")
map("v", "^", "0")
map("x", "^", "0")

map("n", "<C-c>", '"+yy')
map("v", "<C-c>", '"+y')
map("x", "<C-c>", '"+y')

-- greatest remap ever
map("x", "<M-p>", '"_dP')

-- map("n", "Y", "y$")
-- next greatest remap ever : asbjornHaland
map("n", "<M-y>", '"+y')
map("v", "<M-y>", '"+y')
map("n", "<M-Y>", '"+y$')
-- map("n", "<M-Y", "\"+Y")

map("n", "<M-d>", '"_d')
map("v", "<M-d>", '"_d')

map("n", "<M-c>", '"_c')
map("v", "<M-c>", '"_c')

map("v", "<M-d>", '"_d')

-- lvim.keys.normal_mode["<C-j>"] = ":lua require('harpoon.ui').nav_file(1)<CR>"
-- lvim.keys.normal_mode["<C-k>"] = ":lua require('harpoon.ui').nav_file(2)<CR>"
map("n", "<C-e>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
-- map("n", "<leader>a", ":lua require('harpoon.mark').add_file()<CR>")

map("n", "<C-j>", ":lua require('harpoon.ui').nav_file(1)<CR>")
map("n", "<C-k>", ":lua require('harpoon.ui').nav_file(2)<CR>")
map("n", "<C-l>", ":lua require('harpoon.ui').nav_file(3)<CR>")
map("n", "<C-;>", ":lua require('harpoon.ui').nav_file(4)<CR>")

-- map("n", "<C-d>", "<C-d>zz")
-- map("n", "<C-u>", "<C-u>zz")

-- map("t", "<ESC>", "q")

map("i", "<C-c>", "<ESC>")
-- map("n", "<C-c>", "<nop>") -- Disable how to exit vim message
map("n", "<C-c>", "yy")

-- map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- map("n", "<leader>m", ":Format<CR>")

map("n", "<leader>so", ":so %<CR>")

-- map("n", "<leader>b", ":ToggleDiag <CR>")

-- vim.api.nvim_set_keymap('n', 'j', '<Plug>(accelerated_jk_gj)', {})
-- vim.api.nvim_set_keymap('n', 'k', '<Plug>(accelerated_jk_gk)', {})

-- Spectre
map("n", "<leader>S", "<cmd>lua require('spectre').open()<CR>")
map("n", "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>")
map("v", "<leader>s", "<esc>:lua require('spectre').open_visual()<CR>")
map("n", "<leader>sp", "viw:lua require('spectre').open_file_search()<cr>")

map("v", "@", ":normal @")
-- vim.cmd([[ command! Test execute 'lua test()' ]])
-- function test()
--     vim.ui.input({
--       prompt = "macro: ",
--     }, function(input)
--       if input == "y" then
--         vim.cmd (":normal @<CR>" .. input)
--       end
--     end)
-- end
-- sfsaf
--
map("n", "<leader>hi", ':lua require("lsp-inlayhints").toggle()<CR>')

-- map("n", "<leader>dl", ":lua require('dapui').toggle()<CR>")

map("n", "<M-R>", ":SnipRun<CR>")
map("v", "<M-R>", ":SnipRun<CR>")
-- map("i", "jj", "<ESC>")
-- map("i", "jj", "<ESC>")
-- map("i", "jk", "<ESC>")
-- map("v", "jj", "<ESC>")
-- map("v", "jk", "<ESC>")
-- map("i", "ki", "<ESC>")
-- vim.keymap.set('n', '<ScrollWheelUp>', '<C-u>')
-- vim.keymap.set('n', '<ScrollWheelDown>', '<C-d>')
-- vim.keymap.set('i', '<ScrollWheelUp>', '<C-u>')
-- vim.keymap.set('i', '<ScrollWheelDown>', '<C-d>')
-- vim.keymap.set('v', '<ScrollWheelUp>', '<C-u>')
-- vim.keymap.set('v', '<ScrollWheelDown>', '<C-d>')
-- map('n', '<ScrollWheelUp>', '5<C-y>')
-- map('n', '<ScrollWheelDown>', '5<C-e>')
-- map('i', '<ScrollWheelUp>', '5<C-y>')
-- map('i', '<ScrollWheelDown>', '5<C-e>')
-- map('v', '<ScrollWheelUp>', '5<C-y>')
-- map('v', '<ScrollWheelDown>', '5<C-e>')
-- map("n", "<M-r>", ":SnipRun<CR>")
-- map("v", "<M-r>", ":SnipRun<CR>")
-- map("n", "<CR>", ":")
-- map("n", "sf", ":HopWord<CR>")

-- Jump list
map("n", "<C-o>", "<Plug>EnhancedJumpsLocalOlder")
map("n", "<C-i>", "<Plug>EnhancedJumpsLocalNewer")
map("n", "g<C-o>", "<Plug>EnhancedJumpsRemoteOlder")
map("n", "g<C-i>", "<Plug>EnhancedJumpsRemoteNewer")
-- map("n", "a", "m`a")
-- map("n", "i", "m`i")
-- map("n", "I", "^m`I")
-- map("n", "A", "$m`A")
