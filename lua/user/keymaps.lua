--local term_opts = { silent = true }

-- Shorten function name
-- local map = vim.api.nvim_set_keymap
local map = function(mode, bind, action)
    local opts = { noremap = true, silent = true }
    -- vim.api.nvim_set_keymap(mode, bind, action, opts)
    vim.keymap.set(mode, bind, action, opts)
end

--Remap space as leader key
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
map("n", "<M-h>", ":vertical resize +5<CR>")
map("n", "<M-l>", ":vertical resize -5<CR>")
-- map("n", "<M-j>", "<C-w>j")
-- map("n", "<M-k>", "<C-w>k")
-- map("n", "<M-l>", "<C-w>l")

-- Resize windows
map("n", "<Left>", "<C-w>h")
map("n", "<Down>", "<C-w>j")
map("n", "<Up>", "<C-w>k")
map("n", "<Right>", "<C-w>l")

-- map("n", "<leader>e", ":Lex 30<cr>")
-- Nvimtree
-- map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- map("n", "<leader>b", "gcc")

-- Navigate buffers
-- map("n", "J", ":BufferPrevious<CR>")
-- map("n", "K", ":BufferNext<CR>")

map("n", "<leader>cd", ":cd %:p:h<CR>")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
-- map("n", "J", "mzJ`z")

-- Space q to quit
-- map("n", "<leader>q", ":q <CR>")
-- map("n", "<leader>q", ":Bdelete<CR>")
map("n", "<leader>/", "gcc")
-- Replace all occurrences of a word
map("n", "<leader>ra", ":%vs/\\<<C-r><C-w>\\>/")
map("n", "<leader>o", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- map("n", "U", '/<C-r><C-w><CR>')

-- Close current buffer
-- map("n", "Q", ":Bdelete<CR>")

map("n", "<ESC>", ":noh<CR><ESC>")

map("n", "p", "p==")
map("n", "<C-s>", ":w<CR>")
map("i", "<C-s>", "<ESC>:w<CR>")

-- Insert --
-- Press jk fast to enter
-- map("i", "jk", "<ESC>")

map("i", ",", ",<C-g>u")
map("i", ".", ".<C-g>u")
map("i", "?", "?<C-g>u")
map("i", "!", "!<C-g>u")
map("i", "[", "[<C-g>u")
map("i", "{", "{<C-g>u")

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move text up and down
map("v", "J", ":m .+1<CR>==")
map("v", "K", ":m .-2<CR>==")

map("v", "p", '"_dP')

-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv=gv")
map("x", "K", ":move '<-2<CR>gv=gv")

map("n", "<leader>f", "<cmd>Telescope find_files<cr>")
map("n", "<c-t>", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>ps", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>")

-- map("n", "<leader>t", ":TroubleToggle<CR>")
-- map("n", "<leader>t", ":ToggleTerm<CR>")
map("n", "<leader>t", ':silent !bspc rule -a St state=floating -o && st -e zsh -is eval "cd $(pwd)" & <CR>')

map("n", "0", "^")
map("v", "0", "^")
map("x", "0", "^")
map("n", "^", "0")
map("v", "^", "0")
map("x", "^", "0")

-- map("n", "<C-c>", '"+yy')
map("v", "<C-c>", '"+y')
map("x", "<C-c>", '"+y')

-- greatest remap ever
map("x", "<C-w>p", '"_dP')

-- map("n", "Y", "y$")
-- next greatest remap ever : asbjornHaland
map("n", "<C-w>y", '"+y')
map("v", "<C-w>y", '"+y')
map("n", "<C-w>Y", '"+y$')
-- map("n", "<C-w>Y", "\"+Y")

map("n", "<C-w>d", '"_d')
map("v", "<C-w>d", '"_d')

map("v", "<C-w>d", '"_d')

map("n", "<C-e>", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
map("n", "<leader>a", ":lua require('harpoon.mark').add_file()<CR>")

map("n", "<C-j>", ":lua require('harpoon.ui').nav_file(1)<CR>")
map("n", "<C-k>", ":lua require('harpoon.ui').nav_file(2)<CR>")
map("n", "<C-l>", ":lua require('harpoon.ui').nav_file(3)<CR>")
map("n", "<C-;>", ":lua require('harpoon.ui').nav_file(4)<CR>")

-- map("n", "<C-d>", "<C-d>zz")
-- map("n", "<C-u>", "<C-u>zz")

-- map("t", "<ESC>", "q")

map("i", "<C-c>", "<ESC>")
map("n", "<C-c>", "<nop>") -- Disable how to exit vim message

map("n", "<leader>e", ":NvimTreeToggle<CR>")

-- map("n", "<leader>m", ":Format<CR>")

map("n", "<leader>so", ":so %<CR>")

map("n", "<leader>b", ":ToggleDiag <CR>")

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
map("n", "<leader>mm", ":lua require('catppuccin').setup{transparent_background=false}<CR>")

-- map("n", "<leader>R", ":SnipRun<CR>")
-- map("v", "<leader>R", ":SnipRun<CR>")

map("n", "<M-r>", ":SnipRun<CR>")
map("v", "<M-r>", ":SnipRun<CR>")
-- map("n", "<CR>", ":")
