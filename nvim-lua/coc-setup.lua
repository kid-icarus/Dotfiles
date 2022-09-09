local function ShowDocumentation()
  if vim.fn.CocAction('hasProvider', 'hover') then
    vim.fn.CocActionAsync 'doHover'
  else
    vim.fn.feedkeys('K', 'in')
  end
end

local highlight = function()
  vim.fn.CocActionAsync 'highlight'
end

vim.api.nvim_set_keymap('n', 'K', '', { callback = ShowDocumentation, desc = 'Show Documentation' })
vim.api.nvim_create_autocmd('CursorHold', {
  pattern = '*',
  callback = highlight,
})
