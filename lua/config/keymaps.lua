-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- local map = vim.keymap.set
local opt = { noremap = true, silent = true }
-- 定义一个函数来处理模式简写
local function map(modes, lhs, rhs, opts)
  -- 将模式字符串转换为表
  local mode_table = {}
  for mode in modes:gmatch(".") do
    table.insert(mode_table, mode)
  end
  -- 使用 vim.keymap.set 设置键映射
  vim.keymap.set(mode_table, lhs, rhs, opts)
end

-- =================== 快捷键配置
-- jk代替esc键
map("i", "jk", "<esc>", opt)
-- 绑定快捷键
map("n", "<leader>tt", ":lua ToggleTransparency()<CR>", opt)
-- 自动匹配包裹
map("v", "<leader>t'", "xi''<esc>hp", { desc = "Wrap word with single quotes" })
map("v", '<leader>t"', 'xi""<esc>hp', { desc = "Wrap word with double quotes" })
map("v", "<leader>t(", "xi()<esc>hp", { desc = "Wrap word with parentheses" })
map("v", "<leader>t[", "xi[]<esc>hp", { desc = "Wrap word with square brackets" })
map("v", "<leader>t{", "xi{}<esc>hp", { desc = "Wrap word with curly braces" })
map("v", "<leader>t<", "xi<><esc>hp", { desc = "Wrap word with french quotes" })
-- 删除标记
map("n", "<leader>dm", Delete_mark, opt)
