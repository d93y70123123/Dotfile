return {
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300

      local wk = require("which-key")
      -- Set leader key
      wk.setup()
      wk.register({
        ["<space>"] = { "<cmd>nohlsearch<cr>", "取消搜尋Highlight" },
        ["d"] = { "<cmd>NvimTreeToggle<cr>", "顯示/隱藏目錄樹" },
        ["ff"] = { "<cmd>Telescope find_files<cr>", "尋找檔案" },
        ["fg"] = { "<cmd>Telescope live_grep<cr>", "grep 尋找" },
        ["ca"] = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "LSP code_action" },
        ["o"] = { "<cmd>Neotree toggle filesystem reveal left<cr>", "顯示工作目錄" },
        ["gh"] = { "<cmd>lua vim.lsp.buf.format({ timeout_ms = 5000 })<cr>", "格式化文件" },
        ["rn"] = { "<cmd>lua vim.lsp.buf.rename()<cr>", "快速修改" },
        ["rc"] = { "<cmd>QuickRun<cr>", "執行程式" },
        -- add copilot keymap for which-key
      }, { prefix = "<leader>" })
    end,
  },
}
