
local option = vim.opt
local buffer = vim.b
local global = vim.g

-- Globol Settings --
option.showmode = false
option.backspace = { "indent", "eol", "start" }
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
option.shiftround = true
option.autoindent = true
option.smartindent = true
option.number = true
option.relativenumber = true
option.wildmenu = true
option.hlsearch = false
option.ignorecase = true
option.smartcase = true
option.completeopt = { "menuone", "noselect" }
option.cursorline = true
option.termguicolors = true
option.signcolumn = "yes"
option.autoread = true
option.title = true
option.swapfile = false
option.backup = false
option.updatetime = 50
option.mouse = nu 
option.undofile = true
option.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
option.exrc = true
option.wrap = false
option.splitright = true



vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
-- 复用 opt 参数
local opt = {noremap = true, silent = true }

-- 取消 s 默认功能
map("n", "s", "", opt)
-- windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)
-- Alt + hjkl  窗口之间跳转
map("n", "<A-a>", "<C-w>h", opt)
map("n", "<A-s>", "<C-w>j", opt)
map("n", "<A-w>", "<C-w>k", opt)
map("n", "<A-d>", "<C-w>l", opt)


-- 左右比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
-- 上下比例
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 等比例
map("n", "s=", "<C-w>=", opt)


-- Terminal相关
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)


-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

--buffer
map('n','<leader>a',':bp<CR>',opt)
map('n','<leader>d',':bp<CR>',opt)
map('n','<leader>c',':bd!<CR>',opt)


--local pluginKeys = {}
---- Telescope 列表中 插入模式快捷键
--pluginKeys.telescopeList = {
--  i = {
--    -- 上下移动
--    ["<C-j>"] = "move_selection_next",
--    ["<C-k>"] = "move_selection_previous",
--    ["<Down>"] = "move_selection_next",
--    ["<Up>"] = "move_selection_previous",
--    -- 历史记录
--    ["<C-n>"] = "cycle_history_next",
--    ["<C-p>"] = "cycle_history_prev",
--    -- 关闭窗口
--    ["<C-c>"] = "close",
--    -- 预览窗口上下滚动
--    ["<C-u>"] = "preview_scrolling_up",
--    ["<C-d>"] = "preview_scrolling_down",
--  }
--}
--
--return pluginKeys 

