local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s('ilink', {
    t('['), i(1), t(']'), t('('), i(2), t(')')
  })
}
