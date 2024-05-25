local ls = require 'luasnip'
local types = require 'luasnip.util.types'

ls.config.set_config {
  history = true,
  udpateevents = 'TextChanged,TextChangedI',
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { '<-', 'Error' } },
      },
    },
  },
}

vim.keymap.set({ 'i', 's' }, '<c-k>', function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({ 'i', 's' }, '<c-j>', function()
  if ls.expand_or_jumpable(-1) then
    ls.expand_or_jump(-1)
  end
end, { silent = true })

vim.keymap.set({ 'i', 's' }, '<c-l>', function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end)

vim.keymap.set('n', '<leader><leader>s', '<cmd>source ~/.config/nvim/lua/luasnip-snippets.lua<cr>')

-- Add snippets
local s = ls.snippet
local fmt = require('luasnip.extras.fmt').fmt
local i = ls.insert_node

ls.add_snippets('go', {
  s('ife', fmt('if {} != nil {{\n\treturn {}\n}}', { i(1, 'err'), i(0) })),
})

ls.add_snippets('typescript', {
  s({ trig = 'ise', name = 'istanbul ignore' }, fmt('// istanbul ignore {}\n', i(0, 'next'))),
})
