return{
		{
				"akinsho/bufferline.nvim",
				--dependencies = { "kyazdani42/nvim-web-devicons" }, -- 依賴的外掛
				config = function()
					require("bufferline").setup({
						-- 這裡添加 bufferline 的配置
						options = {
							numbers = "ordinal",
							close_command = "bdelete! %d",
							right_mouse_command = "bdelete! %d",
							left_mouse_command = "buffer %d",
							middle_mouse_command = nil,
							-- 更多配置選項可以查看 bufferline 的官方文檔
						}
					})
				end
		},
}
