# ubuntu

```shell
git clone https://github.com/heighfuhandsome/neovimConfig.git
sudo apt install fzf
sudo apt install ripgrep
```

快捷键  （可自己配置 ~/.config/nvim/lua/base.lua）

```lua
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
-- 关闭当前window
map("n", "sc", "<C-w>c", opt)
-- 关闭其他window
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

--切换到上一个buffer
map('n','<leader>a',':bp<CR>',opt)
--切换到下一个buffer
map('n','<leader>d',':bn<CR>',opt)
--关闭当前buffer
map('n','<leader>c',':bd!<CR>',opt)
```

