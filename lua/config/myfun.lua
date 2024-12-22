local is_transparent = false -- 记录当前透明状态
My_colorscheme = "tokyonight"
function ToggleTransparency()
  is_transparent = not is_transparent -- 切换透明状态
  if My_colorscheme == "tokyonight" then
    require(My_colorscheme).setup({

      transparent = is_transparent, -- 设置透明度
      styles = {
        sidebars = "transparent", -- 侧边栏透明
        floats = "transparent", -- 浮动窗口透明
      },
    })
  else
    require(My_colorscheme).setup({
      options = {
        transparent = is_transparent, -- 其他主题配置
      },
    })
  end
  require(My_colorscheme).load() -- 重新加载主题
end

-- 删除标记
---@diagnostic disable: unused-function
---@diagnostic disable: unused-local
function Delete_mark()
  local mark = vim.fn.input("Delete mark: ")
  if mark ~= "" then
    vim.cmd("delmarks " .. mark)
    print("Deleted mark: " .. mark)
  else
    print("No mark specified.")
  end
end
