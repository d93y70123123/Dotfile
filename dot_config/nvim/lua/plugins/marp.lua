-- Markdown 轉成 ppt 的工具
return {
	{
		"mpas/marp-nvim",
		config = function()
			require("marp").setup({
				port = 8081,
				wait_for_response_timeout = 30,
				wait_for_response_delay = 1,
			})
		end,
	},
}
