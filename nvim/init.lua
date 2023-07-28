require('eddxboi.base')
require('eddxboi.plugins')
require('eddxboi.maps')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
  require('eddxboi.macos')
end
if is_win == 1 then
  require('eddxboi.windows')
end
if is_wsl == 1 then
  require('eddxboi.wsl')
end
