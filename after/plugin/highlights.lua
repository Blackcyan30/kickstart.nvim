vim.api.nvim_set_hl(0, 'LineNr', { fg = '#FFD700', bold = true })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#FF4500', bold = true })
vim.cmd [[
  augroup CustomLineNumberOverrides
    autocmd!
    autocmd ColorScheme * highlight LineNr guifg=#FFD700
    autocmd ColorScheme * highlight CursorLineNr guifg=#FF4500
  augroup END
]]
vim.defer_fn(function()
  vim.api.nvim_set_hl(0, 'LineNr', { fg = '#FFD700', bold = true })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#FF4500', bold = true })
end, 100)
