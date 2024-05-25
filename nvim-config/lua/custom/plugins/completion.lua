return {
  {
    'hrsh7th/nvim-cmp',
    lazy = false,
    priority = 100,
    dependencies = {
      'onsails/lspkind.nvim', -- Adds icons to completion items
      'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
      'hrsh7th/cmp-nvim-lua', -- Lua source for nvim-cmp
      'hrsh7th/cmp-buffer', -- Buffer source for nvim-cmp
      'hrsh7th/cmp-path', -- Path source for nvim-cmp (for file path completion)
      'hrsh7th/cmp-cmdline', -- Command line source for nvim-cmp (for command completion)
      'neovim/nvim-lspconfig', -- Actual language server configurations
      {
        'L3MON4D3/LuaSnip',
      },
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      require 'custom.completion'
    end,
  },
}
