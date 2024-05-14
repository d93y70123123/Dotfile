return {
	{
		"vim-pandoc/vim-pandoc",
		config = function()
			vim.g["pandoc#folding#level"] = 2 -- 設置您希望的初始折疊層級
			vim.g["pandoc#filetypes#handled = ['pandoc', 'markdown']"] = 2
		end,
	},
	{
		"vim-pandoc/vim-pandoc-syntax",
	},
}
