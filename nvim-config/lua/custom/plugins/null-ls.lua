return {
  'jose-elias-alvarez/null-ls.nvim',
  dependencies = { { 'nvim-lua/plenary.nvim' } },
  config = function()
    require 'custom.null-ls'
  end,
}
