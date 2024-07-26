-- 美化下方工具狀態列
return{
    {
        'nvim-lualine/lualine.nvim',
        --dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require('lualine').setup({
                options = {
                theme = 'catppuccin'
                }
            })
        end
    },
}
