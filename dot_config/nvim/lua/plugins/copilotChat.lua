-- Copilot 呼叫聊天室跟一些修正等功能
return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      --{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "github/copilot.vim" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
      model = 'gpt-4-0125-preview', -- or 'gpt-4-turbo'
    },
    -- See Commands section for default commands if ou want to lazy load on them
  },
}
