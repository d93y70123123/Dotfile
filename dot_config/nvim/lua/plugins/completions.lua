return {
	-- Code snippet engine
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
		},
		build = "make install_jsregexp",
        -- 看這邊才知道重新安裝就好了。 https://github.com/L3MON4D3/LuaSnip/issues/1071
	},
	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"lspkind.nvim",
			--  "hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			--  "hrsh7th/cmp-buffer", -- buffer auto-completion
			--  "hrsh7th/cmp-path", -- path auto-completion
			--  "hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
		config = function()
			require("config.nvim-cmp")
		end,
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
}
