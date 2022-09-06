local cmp = require'cmp'
local lspkind = require'lspkind'

local sources = cmp.config.sources({
  { name = 'nvim_lua' },
  { name = 'nvim_lsp'},
  { name = 'path' },
  { name = 'buffer', keyword_length = 5 },
})

local snippet = {
  expand = function(args)
    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
  end
}

local formatting = {
  format = lspkind.cmp_format {
    with_text = true,
    menu = {
      buffer = "[buf]",
      nvim_lsp = "[LSP]",
      nvim_lua = "[api]",
      path = "[path]",
      luasnip = "[snip]"
    }
  }
}

cmp.setup({
    snippet = snippet,
    formatting = formatting,
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
      }),
    sources = sources
  })

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
        }, {
          { name = 'buffer' },
        })
    })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline('/', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
          mapping = cmp.mapping.preset.cmdline(),
          sources = cmp.config.sources({
              { name = 'path' }
            }, {
              { name = 'cmdline' }
            })
        })

      -- Set up lspconfig.
      local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
      -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
      require('lspconfig')['tsserver'].setup {
        capabilities = capabilities
      }
