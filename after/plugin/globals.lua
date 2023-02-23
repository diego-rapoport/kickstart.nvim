local async = require('plenary.async')

-- Imprime as tabelas de forma humana
P = function (objeto)
  print(vim.inspect(objeto))
  return objeto
end

-- Substitui as noticações por uma tui
local status_ok, notify = pcall(require, "notify")
if not status_ok then
 return
end
vim.notify = notify

-- Notificações para comandos de terminal
notify_output = function(command, opts)
  local output = ""
  local notification
  local _notify = function(msg, level)
    local notify_opts = vim.tbl_extend(
      "keep",
      opts or {},
      { title = table.concat(command, " "), replace = notification }
    )
    notification = vim.notify(msg, level, notify_opts)
  end
  local on_data = function(_, data)
    output = output .. table.concat(data, "\n")
    _notify(output, "info")
  end
  vim.fn.jobstart(command, {
    on_stdout = on_data,
    on_stderr = on_data,
    on_exit = function(_, code)
      if #output == 0 then
        _notify("No output of command, exit code: " .. code, "warn")
      end
    end,
  })
end

WakaTimeToday = function ()
  async.run(function ()
    return vim.api.nvim_command_output(':WakaTimeToday')
  end)
end

-- Não funciona!
HorasTrabalhadas = function ()
  async.run(function ()
    vim.notify(WakaTimeToday())
  end)
end
