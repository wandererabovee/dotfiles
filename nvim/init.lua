vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--print("Loading init.lua...")

vim.g.mapleader = ' '

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
--print("Lazy path:" .. lazypath)
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
--print("setting up lazy.nvim...")
require("lazy").setup({
  spec ={
    { import = "plugins/telescope"},
    { import = "plugins/treesitter"},
    { import = "plugins/nord"},
  },
  install = { colorscheme = {"nord"}},
  checker = { enabled = true},
})

--print("setting keybindings...")
vim.api.nvim_set_keymap('n', '<Leader>ff', [[:lua require('telescope.builtin').find_files()<CR>)]], {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>fg', [[:lua require('telescope.builtin').live_grep()<CR>)]], {noremap = true, silent = true})


