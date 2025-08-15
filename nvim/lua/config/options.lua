-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
local opt = vim.opt

vim.g.lazyvim_picker = "telescope"
vim.g.lazyvim_mini_snippets_in_completion = true

opt.list = true
opt.listchars = { eol = "¶", space = "·", tab = ">." }
opt.winblend = 0
opt.pumblend = 0
opt.shiftwidth = 4
opt.tabstop = 4
