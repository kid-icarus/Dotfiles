dump = function(tab)
  for key, value in pairs(tab) do
    vim.print(key, '=>', value)
  end
end

P = function(v)
  vim.print(vim.inspect(v))
  return v
end

RELOAD = function(name)
  return require('plenary.reload').reload_module(name)
end

R = function(name)
  RELOAD(name)
  return require(name)
end
