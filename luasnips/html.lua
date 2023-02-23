local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local link_to_url = s("lurl", {
	t('<a href="'),
	f(function(_, snip)
		-- TM_SELECTED_TEXT is a table to account for multiline-selections.
		-- In this case only the first line is inserted.
		return snip.env.TM_SELECTED_TEXT[1] or {}
	end, {}),
	t('">'),
	i(1),
	t("</a>"),
	i(0),
})

return {
	link_to_url,
}
