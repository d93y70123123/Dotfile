return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
      "rcarriga/nvim-notify", -- 添加 nvim-notify 依賴
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        debug = true,
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.completion.spell,
          null_ls.builtins.formatting.prettierd,
          null_ls.builtins.formatting.markdownlint.with({
            filetypes = { "markdown", "pandoc" },
          }),
          null_ls.builtins.diagnostics.markdownlint.with({
            filetypes = { "markdown", "pandoc" },
          }),
          null_ls.builtins.formatting.npm_groovy_lint.with({
            filetypes = { "groovy" },
          }),
          null_ls.builtins.diagnostics.npm_groovy_lint.with({
            filetypes = { "groovy" },
          }),
          -- create formmter and diagnostics for eslint and prettier
          require("none-ls.diagnostics.eslint_d"), -- requires none-ls-extras.nvim
        },
      })
    end,
  },
}
