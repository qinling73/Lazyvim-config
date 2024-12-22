-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd("cd ~/")
-- 设置半透明
vim.opt.termguicolors = true -- 启用真彩色支持
vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]]) -- 设置 Normal 背景为透明
