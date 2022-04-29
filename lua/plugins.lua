local packer = require('packer')
packer.startup({
  function(use)
    use 'wbthomason/packer.nvim'
    -- Packer 可以管理自己本身
    -- 使用的插件列表
    ----------- colorscheme ------------
    use 'folke/tokyonight.nvim'
    use "ful1e5/onedark.nvim"
    ------------------------------------
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
      'akinsho/bufferline.nvim', requires = {
        'kyazdani42/nvim-web-devicons',
        'moll/vim-bbye'
      }
    }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons' }
    }
    use 'arkav/lualine-lsp-progress'
    use {
      'nvim-telescope/telescope.nvim',
      requires = { 'nvim-lua/plenary.nvim' }
    }
    use 'brglng/vim-im-select'
    use 'glepnir/dashboard-nvim'
    use 'ahmedkhalf/project.nvim'
    -- lspconfig
    use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
    -- ts 增强插件
    use { "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" }
    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
    use 'hrsh7th/cmp-path'     -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- vsnip
    use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- lspkind
    use 'onsails/lspkind-nvim'
    -- indent_blankline
    use 'lukas-reineke/indent-blankline.nvim'
    use 'tami5/lspsaga.nvim'
    use 'b0o/schemastore.nvim'
    use 'chemzqm/wxapp.vim'
  end,
  config = {
    -- 并发数限制
    max_jobs = 16,
    -- 自定义源
    git = {
      -- default_url_format = 'https://gitcode.net/mirror/%s',
    },
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end,
    }
  }
})
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)

