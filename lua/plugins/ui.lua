return {
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    -- 以下是可能的基本配置部分
    config = function()
      require("onedarkpro").setup({
        -- 这里可以添加该主题插件本身支持的配置选项，例如配置样式细节、颜色变体等
        -- style = "dark",
        -- colors = {},
      })
    end,
  },
  {
    "sphamba/smear-cursor.nvim",
    lazy = false,
    opts = {
      -- 在切换缓冲区或窗口时对光标进行模糊处理。
      smear_between_buffers = true,

      -- 在同一行内移动光标或移动到相邻行时对光标进行模糊处理。
      smear_between_neighbor_lines = true,

      -- 滚动时在缓冲区空间而非屏幕空间绘制模糊效果。
      scroll_buffer_space = true,

      -- 如果你的字体支持旧版计算机符号（方块Unicode符号），则将此项设置为“真”。这样，模糊效果在所有背景上的融合效果都会更好。
      legacy_computing_symbols_support = false,
    },
  },
}
