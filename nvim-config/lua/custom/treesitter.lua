-- nvim 0.11+ has built-in treesitter highlighting, so we just need to
-- install parsers via nvim-treesitter.
require('nvim-treesitter').setup {}

-- Install desired parsers if not already loadable
local ensure_installed = { 'c', 'lua', 'rust', 'typescript', 'tsx' }
for _, lang in ipairs(ensure_installed) do
  local ok = pcall(vim.treesitter.language.add, lang)
  if not ok then
    require('nvim-treesitter').install(lang)
  end
end
