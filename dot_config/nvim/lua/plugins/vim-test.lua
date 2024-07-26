-- 測試單元的工具
-- 不熟
return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux"
  },
  config = function()
    vim.cmd("let test#strategy = 'vimux'")
    vim.cmd("let test#javascript#runner = 'jest'")
  end,
}
