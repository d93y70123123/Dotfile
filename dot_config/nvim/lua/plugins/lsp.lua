return {
	-- Vscode-like pictograms with lspkind.nvim
	{
		"onsails/lspkind.nvim",
		event = "VimEnter",
		config = function()
			-- 可以在这里配置 lspkind 的特定选项
		end,
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
        },
         -- 自動安裝未安裝的 LSP 伺服器
				automatic_installation = true,
			})
		end,
--		opts = {
--			auto_install = true,
--		},

		--    config = function()
		--      require("mason-lspconfig").setup({
		--        -- A list of servers to automatically install if they're not already installed
		--        ensure_installed = {
		--          "lua_ls",
		--          "tsserver",
		--        },
		--      })
		--    end,
	},

	-- Neovim's native LSP configuration
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("config.lsp")
		end,
	},
}
