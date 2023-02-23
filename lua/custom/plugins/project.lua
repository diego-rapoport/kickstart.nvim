return {
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup({
				scope_chdir = "tab",
				patterns = { ".git", "__init__.py", "package.json", ".mind" },
			})
		end,
	}
