local ls = require 'luasnip'
local s = ls.snippet
local fmt = require('luasnip.extras.fmt').fmt
local i = ls.insert_node

ls.add_snippets('typescript', {
  s({ trig = 'ise', name = 'istanbul ignore' }, fmt('// istanbul ignore {}\n', i(0, 'next'))),
})
