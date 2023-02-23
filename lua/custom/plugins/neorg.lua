return {
		"nvim-neorg/neorg",
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {},
					["core.integrations.telescope"] = {},
					["core.norg.concealer"] = {},
					["core.export.markdown"] = {},
					["core.presenter"] = {
						config = {
							zen_mode = "zen-mode",
						},
					},
					["core.export"] = {
						config = {
							extensions = "all",
						},
					},
					--[[ ["core.gtd.base"] = {
            config = {
              workspace = "tasks",
            },
          }, ]]
					["core.norg.dirman"] = {
						config = {
							workspaces = {
								norgs = "~/Documentos/Norgs",
								tasks = "~/Documentos/Norgs/Tasks",
							},
							autochdir = true,
							index = "index.norg",
							defaut_workspace = "~/Documentos/Norgs",
						},
					},
					["core.norg.completion"] = {
						config = {
							engine = "nvim-cmp",
						},
					},
					["core.keybinds"] = {
						config = {
							default_keybindins = true,
							neorg_leader = "<leader>o",
						},
					},
				},
			})
		end,
		-- ft = 'norg',
		after = "nvim-treesitter",
		run = ":Neorg sync-parsers",
		dependencies = "nvim-neorg/neorg-telescope",
	}
