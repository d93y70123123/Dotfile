return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
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
					--require("none-ls.diagnostics.eslint_d"),
					-- create formmter and diagnostics for eslint and prettier
					require("none-ls.diagnostics.eslint_d"), -- requires none-ls-extras.nvim
				},
			})
		end,
	},
}
