local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

require('null-ls').setup {
  sources = {
    require('null-ls').builtins.formatting.stylua,
    -- require('null-ls').builtins.formatting.eslint_d,
    require 'none-ls.formatting.eslint_d',
    require 'none-ls.diagnostics.eslint_d',
    require('null-ls').builtins.formatting.rustfmt,
    require('null-ls').builtins.formatting.gofmt,
    require('null-ls').builtins.formatting.goimports,
    require('null-ls').builtins.formatting.golines,
  },
  on_attach = function(client, bufnr)
    if client.supports_method 'textDocument/formatting' then
      vim.api.nvim_clear_autocmds {
        buffer = bufnr,
        group = augroup,
      }
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
