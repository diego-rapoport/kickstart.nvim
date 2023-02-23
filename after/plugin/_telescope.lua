local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  vim.notify('Telescope não encontrado!')
  return
end

telescope.load_extension('gh')
telescope.load_extension('projects')
telescope.load_extension('neoclip')
telescope.load_extension('env')
-- telescope.load_extension('menu')
telescope.load_extension('luasnip')

require('lsp-toggle').setup()

-- local config_path = '~/.config/nvim/lua'
local config = {
  extensions = {
    project = {
      base_dirs = {
        { path = '~/Dev', max_depth = 4 },
      },
    },
    --[[ menu = {
      default = {
        items = {
          { "Configs", "Telescope menu configs" },
        },
      },
      configs = {
        items = {
          { 'Plugins', 'e ' .. config_path .. '/plugins.lua' },
          { 'Comandos automáticos', 'e ' .. config_path .. '/autocmds.lua' },
          { 'Autopairs', 'e ' .. config_path .. '/autopairs.lua' },
          { 'Cores', 'e ' .. config_path .. '/colors.lua' },
          { 'CMP', 'e ' .. config_path .. '/_cmp.lua' },
        }
      }
    } ]]
  }
}
return config
