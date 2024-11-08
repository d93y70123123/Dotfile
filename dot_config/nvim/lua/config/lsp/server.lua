-- add capabilities to the LSP client
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")

local lsp_servers = {
	"solargraph",
	"html",
	"lua_ls",
	"groovyls",
	"sqlls",
	"pyright",
	"marksman",
	"gopls",
	"ts_ls",
}

for _, lsp in ipairs(lsp_servers) do
	lspconfig[lsp].setup({
		capabilities = capabilities,
	})
end

lspconfig.pyright.setup({
	settings = {
		python = {
			analysis = {
				typeCheckingMode = "strict", -- 設置類型檢查模式為 "strict"
				--               autoSearchPaths = true,
				--               useLibraryCodeForTypes = true,
			},
		},
	},
})
