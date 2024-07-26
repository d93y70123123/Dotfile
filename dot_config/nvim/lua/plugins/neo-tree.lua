return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			--            "3rd/image.nvim",
		},
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,  -- 如果 neo-tree 是最后一个窗口，则关闭
				default_component_configs = {
					indent = {
						with_expanders = true,
					},
					icon = {
						-- 有用的
						folder_closed = "",
						folder_open = "",
						folder_empty = "",
						-- 沒有用的
						folder_empty_open = "",
						folder_empty_close = "",
						folder_symlink = "",
						folder_symlink_open = "",
						-- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
						-- then these will never be used.
						default = "*",
						highlight = "NeoTreeFileIcon",
					},
				},
				filesystem = {
					filtered_items = {
						visible = true, -- 显示隐藏文件
						hide_dotfiles = false,
						hide_gitignored = false,
					},
					follow_current_file = {
						enabled = true, -- 当文件被打开时自动定位到该文件
					},
				},
				window = {
					position = "left", -- 在左侧显示neo-tree窗口
					width = 25, -- 设置窗口宽度
				},
			})
		end,
	},
}
