return {
  dir = '~/Projects/personal/jira.nvim',
  dependencies = {
    'jcdickinson/http.nvim',
  },
  config = function()
    require('jira').setup()
  end,
}
