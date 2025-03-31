local ls = require 'luasnip'

-- Add boilerplate HTML snippet
ls.add_snippets('html', {
  ls.snippet('html5', {
    ls.text_node {
      '<!DOCTYPE html>',
      '<html lang="en">',
      '<head>',
      '  <meta charset="UTF-8">',
      '  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
      '  <title>Document</title>',
      '</head>',
      '<body>',
      '</body>',
      '</html>',
    },
  }),
})

-- Keymap to trigger the snippet
vim.keymap.set('n', '<leader>bhtml', function()
  vim.api.nvim_put({
    '<!DOCTYPE html>',
    '<html lang="en">',
    '    <head>',
    '        <meta charset="UTF-8">',
    '        <meta name="viewport" content="width=device-width, initial-scale=1.0">',
    '        <title>Document</title>',
    '    </head>',
    '    <body>',
    '    </body>',
    '</html>',
  }, 'l', false, true)
end, { desc = 'Insert HTML5 boilerplate' })
