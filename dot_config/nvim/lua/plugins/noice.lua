-- noice 優化使用體驗，例如 命令視窗、搜尋視窗等，也可以整合 nvim-notify
-- 1. 可以用滾輪滾動 nvim 開啓的內容
-- 2. 美化命令視窗
-- 3. 美化搜尋視窗
-- 4. 印出 command 執行的 message
-- nvim-notify 可以美化通知視窗
-- 1. 儲存或是複製的訊息會顯示在通知視窗
return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      routes = {
        {
          -- 設定要過濾的條件
          filter = {
            event = "lsp",
            kind = "progress",
            cond = function(message)
              local client = vim.tbl_get(message.opts, "progress", "client")

              -- 印出是哪個 client 在調用 LSP
              --if client then
              --  vim.notify("LSP Client detected: " .. client, vim.log.levels.INFO)
              --else
              --  vim.notify("No client detected", vim.log.levels.WARN)
              --end

              return client == "null-ls"
            end,
          },
          -- 如果符合條件，就跳過
          opts = { skip = true },
        },
        {
          filter = { event = "notify", find = "No information available" },
          opts = { skip = true },
        },
      },
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true,    -- use a classic bottom cmdline for search
          command_palette = true,  -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false,      -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false,  -- add a border to hover docs and signature help
        },
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
}
