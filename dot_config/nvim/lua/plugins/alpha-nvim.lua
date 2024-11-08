--[[ return {
	{
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},
} ]]

return {
	{
		"goolord/alpha-nvim",
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			-- 設定標頭
			dashboard.section.header.val = {
			    "                                                     ",
			    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			    "                                                     ",
			}

			-- 設定選單
			dashboard.section.buttons.val = {
			    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
			    dashboard.button( "f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
			    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
			    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
			    dashboard.button( "d", "  > Open vim-dadbod" , ":DBUI<CR>"),
			    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
			}

			-- 傳送設定到 alpha
			alpha.setup(dashboard.opts)

			-- 禁用 alpha buffer 的摺疊
			vim.cmd([[
			    autocmd FileType alpha setlocal nofoldenable
			]])
		end,
	},
}

