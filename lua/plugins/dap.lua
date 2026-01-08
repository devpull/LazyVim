return {
  "mfussenegger/nvim-dap",
  type = "server",
  opts = function()
    local dap = require("dap")

    dap.configurations.php = {
      {
        type = "php",
        request = "launch",
        name = "Listen for Xdebug (WSL):php project",
        port = 9003,
        hostname = "0.0.0.0", -- Новый хост
        pathMappings = {
          ["/var/www/html"] = "${workspaceFolder}/src",
        },
      },
      {
        type = "php",
        request = "launch",
        name = "Listen for Xdebug (WSL):glgrup project",
        port = 9003,
        hostname = "0.0.0.0", -- Новый хост
        pathMappings = {
          ["/var/www/html"] = "/home/devpull/code/glgrup.test",
        },
      },
    }
  end,
}

-- return {
--   "mfussenegger/nvim-dap",
--   opts = function()
--     local dap = require("dap")
--
--     -- Функция для получения IP адреса WSL
--     local function get_wsl_ip()
--       local handle = io.popen("hostname -I | awk '{print $1}'")
--       local result = handle:read("*a")
--       handle:close()
--       return result:gsub("%s+", "") -- убираем лишние пробелы/переносы
--     end
--
--     local wsl_ip = get_wsl_ip()
--
--     dap.configurations.php = {
--       {
--         type = "php",
--         request = "launch",
--         name = "Listen for Xdebug (WSL)",
--         port = 9003,
--         -- Neovim будет слушать на этом IP
--         hostname = wsl_ip,
--         pathMappings = {
--           -- Обязательно укажите соответствие путей!
--           ["/var/www/html"] = "${workspaceFolder}/src",
--         },
--       },
--     }
--   end,
-- }
