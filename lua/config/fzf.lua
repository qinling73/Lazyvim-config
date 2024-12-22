require("fzf-lua").setup({
  files = {
    exclude = { "*.lock*" }, -- 排除所有以 .lock 开头的文件
  },
})
