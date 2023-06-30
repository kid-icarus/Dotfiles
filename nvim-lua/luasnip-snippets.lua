local ls = require 'luasnip'
local s = ls.snippet
local fmt = require('luasnip.extras.fmt').fmt
local i = ls.insert_node

ls.add_snippets('go', {
  s('ife', fmt('if {} != nil {{\n\treturn {}\n}}', { i(1, 'err'), i(0) })),
})

ls.add_snippets('typescript', {
  s({ trig = 'ise', name = 'istanbul ignore' }, fmt('// istanbul ignore {}\n', i(0, 'next'))),
})
