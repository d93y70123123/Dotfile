-- 为 GitHub Copilot 设置快捷键的函数
--local function setup_copilot_keymaps()
--  vim.keymap.set("i", "<C-]>", "<Plug>(copilot-dismiss)", { silent = true, desc = "Dismiss current suggestion" })
--  vim.keymap.set("i", "<M-]>", "<Plug>(copilot-next)", { silent = true, desc = "Next suggestion" })
--  vim.keymap.set("i", "<M-[>", "<Plug>(copilot-previous)", { silent = true, desc = "Previous suggestion" })
--  vim.keymap.set("i", "<M-\\>", "<Plug>(copilot-suggest)", { silent = true, desc = "Request a suggestion" })
--  vim.keymap.set(
--    "i",
--    "<M-Right>",
--    "<Plug>(copilot-accept-word)",
--    { silent = true, desc = "Accept next word of suggestion" }
--  )
--  vim.keymap.set(
--    "i",
--    "<M-C-Right>",
--    "<Plug>(copilot-accept-line)",
--    { silent = true, desc = "Accept next line of suggestion" }
--  )
--end

-- 配置表，包括插件和快捷键设置
return {
  {
    "github/copilot.vim",
--    config = setup_copilot_keymaps, -- 调用设置快捷键的函数
  },
}
