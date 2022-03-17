local status, im_select = pcall(require, 'vim-im-select')

if not status then
  vim.notify('im-select not found')
  return
end

im_select.setup()
