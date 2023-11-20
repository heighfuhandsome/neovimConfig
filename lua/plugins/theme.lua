return{
    {
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd[[colorscheme tokyonight-storm]]
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = true
    },
    {
        "utilyre/barbecue.nvim",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        opts = {
            theme = 'tokyonight'
        },
    }
}
