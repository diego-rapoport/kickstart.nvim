local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local newfg = s("newfg", {
	t("local "),
	i(1),
	t(" = new FormGroup("),
	i(2),
	t(")"),
})

local loadChildren = s("lochi", {
	t("loadChildren: () => import('"),
	i(1),
	t("').then((m) => m."),
	i(2),
	t("),"),
})
return {
	newfg,
	loadChildren,
}
