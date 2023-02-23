local opt = vim.opt

opt.relativenumber = true
vim.cmd.colorscheme 'catppuccin-frappe'

-- format on save
require('lspconfig').eslint.setup({
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})

-- Seta o separador como uma linha toda vez que abre um split
local function set_split_separator()
  vim.api.nvim_cmd({ cmd = "highlight", args = {"WinSeparator", "guibg=None"}}, {})
end

local augroup = vim.api.nvim_create_augroup
local aucmd = vim.api.nvim_create_autocmd
local separator = augroup('Separator', {clear = false})
aucmd({'WinEnter'}, {
  pattern = {"*"},
  callback = set_split_separator,
  group = separator,
})
