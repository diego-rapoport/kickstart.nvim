local M = {}

function M.limpa_str(str, limpa)
  local nova_str = str
  for _, valor in pairs(limpa) do
    if string.find(str, valor) then
      nova_str = string.gsub(nova_str, valor, '')
    end
  end
  return nova_str
end

function M.capitalizar(str)
  return string.gsub(str, string.sub(str, 1, 1), string.upper, 1)
end

return M
