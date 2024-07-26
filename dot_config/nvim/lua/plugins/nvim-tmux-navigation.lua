-- 整合 tmux 和 vim 的 window 移動
return {
  "alexghergh/nvim-tmux-navigation",
  config = function()
    require("nvim-tmux-navigation").setup({})
  end,
}
