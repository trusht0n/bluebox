local util = require("bluebox.util")
local theme = require("bluebox.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

return M
