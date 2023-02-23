local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local f = ls.function_node

local require = s(
	"req",
	fmt([[local {} = require "{}"]], {
		f(function(import_name)
			local parts = vim.split(import_name[1][1], ".", true)
			return parts[#parts] or ""
		end, { 1 }),
		i(1),
	})
)

return {
	s("reqlsp", {
		t('require("lspconfig").'),
		i(1),
		t(".setup{"),
		i(2),
		t("}"),
	}),
	require,
}
