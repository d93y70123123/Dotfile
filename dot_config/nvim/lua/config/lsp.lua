-- add capabilities to the LSP client
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({
  capabilities = capabilities,
})
lspconfig.solargraph.setup({
  capabilities = capabilities,
})
lspconfig.html.setup({
  capabilities = capabilities,
})
lspconfig.lua_ls.setup({
  capabilities = capabilities,
})
lspconfig.groovyls.setup ({
  capabilities = capabilities,
})

lspconfig.sqlls.setup ({
  capabilities = capabilities,
})

lspconfig.pyright.setup ({
  settings = {
        python = {
            analysis = {
                typeCheckingMode = "strict",  -- 設置類型檢查模式為 "strict"
 --               autoSearchPaths = true,
 --               useLibraryCodeForTypes = true,
            },
        },
    },
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})

--local opts = { noremap = true, silent = true }
--vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
--vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

--local on_attach = function(client, bufnr)
--    -- Enable completion triggered by <c-x><c-o>
--   	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
--
--   	-- See `:help vim.lsp.*` for documentation on any of the below functions
--   	local bufopts = { noremap = true, silent = true, buffer = bufnr }
--   	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
--   	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
--   	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
--   	vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
--   	vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
--   	vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
--   	vim.keymap.set("n", "<space>wl", function()
--   		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--   	end, bufopts)
--   	vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
--   	vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
--   	vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
--   	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
--   	vim.keymap.set("n", "<space>f", function()
--   		vim.lsp.buf.format({ async = true })
--   	end, bufopts)
--end
