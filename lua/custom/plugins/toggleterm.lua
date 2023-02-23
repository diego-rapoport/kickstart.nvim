return {
  {
		"akinsho/toggleterm.nvim",
		tags = "*",
		config = function()
			require("toggleterm").setup({
  size = 20,
  hide_numbers = true,
  shade_filtypes = {},
  shade_terminals = true,
  shading_factor = 2,
  insert_mappgins = true,
  start_in_insert = false,
  terminal_mappings = true,
  direction = "horizontal",
  close_on_exit = true,
  shell = vim.o.shell,
  autochdir = true,
})
		end,
	}
}
