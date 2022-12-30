reload("user.plugins")
reload("user.keymaps")
reload("user.options")
reload("user.smoothie")
reload("user.cmp")
reload("user.nvimtree")
reload("user.lsp")
reload("user.treesitter")
reload("user.fidget")
reload("user.colorscheme")
reload("user.dap")
reload("user.dap-ui")
reload("user.whichkey")
reload("user.lualine")
reload("user.null-ls")
reload("user.dap-virtual-text")
reload("user.enhancedjumps")
reload("user.autocmds")
reload("user.telescope")
reload("user.toggleterm")
reload("user.neovide")

-- Why
reload("nvim-comment-frame").setup({
  keymap = "<C-0>",
  multiline_keymap = "<C-9>",
})
