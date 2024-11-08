return {
  -- Vscode-like pictograms with lspkind.nvim
  {
    "onsails/lspkind.nvim",
    event = "VimEnter",
    config = function() end,
  },

  -- Mason for managing LSP servers, linters, formatters, etc.
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })

      --			local tools_to_install = {
      --				"stylua",
      --				"prettierd",
      --				"eslint_d",
      --				"typescript-language-server",
      --        "markdownlint",
      --        "marksman",
      --			}
      --
      --			local mason_registry = require("mason-registry")
      --			for _, tool in ipairs(tools_to_install) do
      --				if not mason_registry.is_installed(tool) then
      --					mason_registry.get_package(tool):install()
      --					print("Installing " .. tool .. " for the first time...")
      --				else
      --					--print(tool .. " is already installed. No need to install again.")
      --				end
      --			end
    end,
  },

  -- Mason-Lspconfig bridge
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      -- 指定需要安裝的 LSP 伺服器
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",
          "groovyls",
          "sqlls",
          "lua_ls",
          "ts_ls",
          "marksman",
          "gopls",
        },
        -- 自動安裝未安裝的 LSP 伺服器
        automatic_installation = true,
      })
    end,
  },

  -- Mason-Lspinstall bridge
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          "stylua",
          "prettierd",
          "markdownlint",
          "sql-formatter",
        },
      })
    end,
  },

  -- Neovim's native LSP configuration
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("config.lsp.init")
    end,
  },
}
