return {
  'akinsho/bufferline.nvim',
  tags = "v3.*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  after = 'catppuccin',
  config = function ()
    require('bufferline').setup {
      highlights = require('catppuccin.groups.integrations.bufferline').get(),
      options = {
        diagnostics = 'nvim_lsp',
        separator_style = 'slant',
    diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or ""
        return " " .. icon .. count
    end
      },
    }
  end
}
