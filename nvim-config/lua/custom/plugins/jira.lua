return {
  dir = '~/Projects/personal/jira.nvim',
  dependencies = {
    'jcdickinson/http.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('jira').setup()
    local t = require 'telescope'
    vim.keymap.set('n', '<leader>jv', '<cmd>Jira issue view<cr>', {})
    vim.keymap.set('n', '<leader>jt', t.extensions.jira.transitions, {})
  end,
}
