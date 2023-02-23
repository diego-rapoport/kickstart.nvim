local M = {}

function M.gera_lista_subarquivos(caminho)
  local scan = require('plenary.scandir').scan_dir
  local arquivos = {}

  for _, caminho_arquivo in ipairs(scan(caminho)) do
    table.insert(arquivos, caminho_arquivo)
  end

  return arquivos
end

function M.pega_localrelativo_arquivo()
  return vim.api.nvim_command_output(':echo @%')
end

function M.pega_localtotal_arquivo()
  return vim.api.nvim_command_output(':echo expand("%:p")')
end

function M.retorna_caminho_arquivo()
  return vim.api.nvim_command_output(':echo expand("%:p:h")')
end

function M.pega_nome_arquivo(caminho)
  return string.sub(caminho, -(string.find(caminho:reverse(), '/')) +1)
end

return M

