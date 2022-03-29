vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
local pluginKeys = {}

-- 回到 Dashboard
map('n', '<space><leader>h', ':Dashboard<CR>', opt)

-- 分屏
map('n', '<leader><leader>v', ':vsp<CR>', opt)
map('n', '<leader><leader>h', ':sp<CR>', opt)
-- 关闭当前
map('n', '<leader>c', '<C-w>c', opt)
-- 关闭其它
map('n', '<leader>o', '<C-w>o', opt)
-- Alt + hjkl 窗口之间自由穿梭
map("n", "<leader>a", "<C-w>h", opt)
map("n", "<leader>s", "<C-w>j", opt)
map("n", "<leader>w", "<C-w>k", opt)
map("n", "<leader>d", "<C-w>l", opt)
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
map("n", "<leader>=", "<C-w>=", opt)

-- Terminal 相关
map('n', '<leader><leader>tv', ':sp | terminal<CR>', opt)
map('n', '<leader><leader>th', ':vsp | terminal<CR>', opt)
map('t', '<Esc>', '<C-\\><C-n>', opt)
map("t", "<leader>a", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<leader>s", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<leader>w", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<leader>d", [[ <C-\><C-N><C-w>l ]], opt)

-- visual 模式下缩进代码
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- 上下移动选中文本
map('v', 'J', ':move \'>+1<cr>gv-gv', opt)
map('v', 'K', ':move \'<-2<CR>gv-gv', opt)

-- 上下滚动浏览
map('n', '<C-j>', '8j', opt)
map('n', '<C-k>', '8k', opt)

-- 快捷退出
-- map('n', '<space>q', ':q<CR>', opt)
-- map('n', '<space>qq', ':q!<CR>', opt)
-- map('n', '<space>w', ':w<CR>', opt)
-- map('n', '<space>wq', ':wq<CR>', opt)

-- 列表操作快捷键
map('n', '<M-b>', ':NvimTreeToggle<CR>', opt)
map('n', '∫', ':NvimTreeToggle<CR>', opt)
map('i', '∫', ':NvimTreeToggle<CR>', opt)
map('n', '<F1>', ':NvimTreeToggle<CR>', opt)
map('n', '<leader>b', ':NvimTreeToggle<CR>', opt)

-- bufferline
-- 左右切换
map('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt)
map('n', '<C-l>', ':BufferLineCycleNext<CR>', opt)
map('n', '[', ':BufferLineCyclePrev<CR>', opt)
map('n', ']', ':BufferLineCycleNext<CR>', opt)
-- 关闭
-- 'moll/vim-bbye'
map('n', '<C-w>', ':Bdelete!<CR>', opt)
-- map('n', '<leader>w', ':Bdelete!<CR>', opt)
map('n', '<space>bl', ':BufferLineCloseRight<CR>', opt)
map('n', '<space>bh', ':BufferLineCloseLeft<CR>', opt)
map('n', '<space>pk', ':BufferLinePickClose<CR>', opt)

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
-- 格式化全文
map('n', '<space>=', 'gg=G<C-o>', opt)

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
{ key = "r", action = "refresh" },
{ key = "a", action = "create" },
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

-- treesitter 增量选择快捷键
pluginKeys.treesitterList = {
  init_selection = "<CR>",
  node_incremental = "<CR>",
  node_decremental = "<BS>",
  scope_incremental = "<TAB>",
}

-- lsp 回调函数快捷键设置
pluginKeys.maplsp = function(mapbuf)
  -- rename
  mapbuf('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
  -- code action
  mapbuf('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
  -- go xx
  mapbuf('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
  mapbuf('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
  mapbuf('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
  mapbuf('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
  mapbuf('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
  -- diagnostic
  mapbuf('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
  mapbuf('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
  mapbuf('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
  -- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  -- leader + =
  mapbuf('n', '<space>fm', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
  mapbuf('n', '<leader>fm', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
  -- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
  -- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  -- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  -- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<C-j>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<Esc>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['≥'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['≤'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<Tab>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end

return pluginKeys
