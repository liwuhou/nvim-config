vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
local pluginKeys = {}

-- 分屏
map('n', '<leader><leader>v', ':vsp<CR>', opt)
map('n', '<leader><leader>h', ':sp<CR>', opt)
-- 关闭当前
map('n', '<leader>c', '<C-w>c', opt)
-- 关闭其它
map('n', '<leader>o', '<C-w>o', opt)
-- Alt + hjkl 窗口之间自由穿梭
map("n", "˙", "<C-w>h", opt)
map("n", "∆", "<C-w>j", opt)
map("n", "˚", "<C-w>k", opt)
map("n", "¬", "<C-w>l", opt)
-- 左右比例控制
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "<leader>h", ":vertical resize -20<CR>", opt)
map("n", "<leader>l", ":vertical resize +20<CR>", opt)
-- 上下比例
map("n", "<leader>j", ":resize +10<CR>", opt)
map("n", "<leader>k", ":resize -10<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
-- 等比例
map("n", "s=", "<C-w>=", opt)

-- Terminal 相关
map('n', '<leader><leader>th', ':sp | terminal<CR>', opt)
map('n', '<leader><leader>tv', ':vsp | terminal<CR>', opt)
map('t', '<Esc>', '<C-\\><C-n>', opt)
map("t", "˙", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "∆", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "˚", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "¬", [[ <C-\><C-N><C-w>l ]], opt)

-- visual 模式下缩进代码
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- 上下移动选中文本
map('v', 'J', ':move \'>+1<cr>gv-gv', opt)
map('v', 'K', ':move \'<-2<CR>gv-gv', opt)

-- 上下滚动浏览
map('n', '<C-j>', '4j', opt)
map('n', '<C-k>', '4k', opt)

-- 快捷退出
map('n', '<leader>q', ':q<CR>', opt)
map('n', '<leader>qq', ':q!<CR>', opt)
map('n', '<leader>w', ':w<CR>', opt)
map('n', '<leader>wq', ':wq<CR>', opt)

-- 列表操作快捷键
map('n', '∫', ':NvimTreeToggle<CR>', opt)
map('n', '<F1>', ':NvimTreeToggle<CR>', opt)
map('n', '<leader>b', ':NvimTreeToggle<CR>', opt)

pluginKeys.nvimTreeList = {
  -- 打开文件或文件夹
  { key = {"o", "<2-LeftMouse>"}, action = 'edit' },
   -- 分屏打开文件
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  -- 显示隐藏文件
  { key = "i", action = "toggle_ignored" }, -- Ignore (node_modules)
  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
  -- 文件操作
  { key = "<F5>", action = "refresh" },
  { key = "a", action = "create" },
  { key = "i", action = "create" },
  { key = "d", action = "remove" },
  { key = "<CR>", action = "rename" },
  { key = "x", action = "cut" },
  { key = "y", action = "copy" },
  { key = "p", action = "paste" },
  { key = "s", action = "system_open" },
}
-- Telescope 列表中 插入模式快捷键
pluginKeys.telescopeList = {
  i = {
    -- 上下移动
    ["<C-j>"] = "move_selection_next",
    ["<C-k>"] = "move_selection_previous",
    ["<Down>"] = "move_selection_next",
    ["<Up>"] = "move_selection_previous",
    -- 历史记录
    ["<C-n>"] = "cycle_history_next",
    ["<C-p>"] = "cycle_history_prev",
    -- 关闭窗口
    ["<C-c>"] = "close",
    -- 预览窗口上下滚动
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}


-- bufferline
-- 左右切换
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<C-l>', ':BufferLineCycleNext<CR>', opt)
-- 关闭
-- 'moll/vim-bbye'
map('n', '<C-w>', ':Bdelete!<CR>', opt)
map('n', '<leader>bl', ':BufferLineCloseRight<CR>', opt)
map('n', '<leader>bh', ':BufferLineCloseLeft<CR>', opt)
map('n', '<leader>bc', ':BufferLinePickClose<CR>', opt)

-- Telescope
-- 查找文件
map('n', '<C-p>', ':Telescope find_files<CR>', opt)
map('n', '<leader>p', ':Telescope find_files<CR>', opt)
-- 全局搜索
map('n', '<C-f>', ':Telescope live_grep<CR>', opt)
map('n', '<leader>f', ':Telescope live_grep<CR>', opt)
map('n', '<leader>cf', ':Telescope grep_string<CR>', opt)
map('n', '<leader>`', ':Telescope marks<CR>', opt)
-- 当前的 buffers
-- map('n', '<C-o>', ':Telescope buffers<CR>', opt)
map('n', '<leader>o', ':Telescope buffers<CR>', opt)

return pluginKeys
