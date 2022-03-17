local status, lualine = pcall(require, 'lualine')

if not status then
  vim.notify('lualine not found')
  return
end

lualine.setup({
  options = {
    theme = 'auto',
    component_separators = { left = "|", right = "|" },
    -- https://github.com/ryanoasis/powerline-extra-symbols
    section_separators = { left = " ", right = "" },
  },
  extensions = { 'nvim-tree', 'toggleterm' },
  sections = {
    lualine_c = {
      'filename',
      {
        'lsp_progress',
        spinner_symbols = { " ", " ", " ", " ", " ", " " },
      },
    },
    lualine_x = {
      'filesize',
      {
        'fileformat',
        -- unix = '', -- e712
        -- dos = '', -- e70f
        -- mac = '', -- e711
      },
      'encoding',
      'filetype'
    }
  }
})
