return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        --ensure_installed = { "lua", "vim", "vimdoc", "javascript" },
        auto_install = true,
        highlight = {
          enable = true,
          disable = {
            "markdown",
            "markdown_inline",
          },
        },
        indent = { enable = true },
      })
    end,
  },
}
