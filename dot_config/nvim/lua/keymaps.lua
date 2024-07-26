-- define common options
vim.g.mapleader = " "

local opts = {
	noremap = true, -- non-recursive
	silent = true, -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- setting for nvim-tmux-navigation
-- Tmux navigation 必須要先載入一次空的表
vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", opts)
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", opts)
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", opts)
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", opts)

-- for vim-test
vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", {})
vim.keymap.set("n", "<leader>T", ":TestFile<CR>", {})
vim.keymap.set("n", "<leader>a", ":TestSuite<CR>", {})
vim.keymap.set("n", "<leader>l", ":TestLast<CR>", {})
vim.keymap.set("n", "<leader>g", ":TestVisit<CR>", {})

-- 關閉 Noice 的通知
vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "關閉通知" })


-- Telescope 相關
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "尋找檔案" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "grep 尋找" })

-- 執行程式
vim.keymap.set("n", "<leader>rc", "<cmd>QuickRun<cr>", { desc = "執行程式" })

-- LSP 相關
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "LSP code_action" })
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "快速修改" })
vim.keymap.set(
	"n",
	"<leader>gh",
	"<cmd>lua vim.lsp.buf.format({ timeout_ms = 5000 })<cr>",
	{ desc = "格式化文件" }
)

-- NeoTree 切換開關
vim.keymap.set("n", "<leader>o", "<cmd>Neotree toggle filesystem reveal left<cr>", { desc = "顯示/隱藏工作區域" })

-- 其他
vim.keymap.set("n", "<leader><space>", "<cmd>nohlsearch<cr>", { desc = "取消搜尋Highlight" })
vim.keymap.set("n", "<leader>bn", "<cmd>bn<CR>", { desc = "切換到下個分頁" })
vim.keymap.set("n", "<leader>bp", "<cmd>bp<CR>", { desc = "切換到上個分頁" })

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
