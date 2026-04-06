return {
  'nvim-telescope/telescope.nvim',
  branch = 'master',
  dependencies = { { 'nvim-lua/plenary.nvim' } },
  config = function()
    require 'custom.telescope'
  end,
}
