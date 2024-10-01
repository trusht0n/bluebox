-- local util = require("bluebox.util")
--
-- local M = {}
--
-- local the_palette = {
--   dark0 = "#0d0e0f",
--   dark = "#202020",
--   foreground = "#ebdbb2",
--   background = "#282828",
--   background_dark = "#1d2021",
--   background_light = "#32302f",
--   medium_gray = "#504945",
--   comment = "#665c54",
--   gray = "#DEDEDE",
--   soft_yellow = "#eebd35",
--   soft_green = "#98971a",
--   bright_yellow = "#fabd2f",
--   orange = "#d65d0e",
--   red = "#fb4934",
--   error_red = "#cc241d",
--   magenta = "#b16286",
--   pink = "#D4879C",
--   light_blue = "#7fa2ac",
--   dark_gray = "#83a598",
--   blue_gray = "#458588",
--   forest_green = "#689d6a",
--   clean_green = "#8ec07c",
--   milk = "#E7D7AD",
--   none = "NONE",
-- }
--
-- the_palette.term = {
--   "#282828", "#cc241d", "#98971a", "#d79921", "#458588", "#b16286", "#689d6a", "#ebdbb2",
--   "#928374", "#fb4934", "#b8bb26", "#fabd2f", "#83a598", "#d3869b", "#8ec07c", "#a89984",
-- }
--
-- -- these are backgrounds
-- the_palette.diff = {
--   add = "#26332c",
--   change = "#273842",
--   delete = "#572E33",
--   text = "#314753",
-- }
-- M.p = the_palette
--
-- local original_palette = vim.tbl_extend("force", the_palette, {
--   foreground = "#fbf1c7",
--   soft_green = "#b8bb26",
--   forest_green = "#b8bb26",
--   soft_yellow = "#fabd2f",
--   light_blue = "#83a598",
--   magenta = "#d3869b",
--   orange = "#fe8019",
--   gray = "#928374",
--   comment = "#928374",
-- })
--
-- function M.config(config)
--   config = config or require("bluebox.config")
--   local colors
--   if config.use_original_palette then
--     colors = original_palette
--   else
--     colors = the_palette
--   end
--
--   local intensity_map = {
--     ["dark"] = {
--       dark = colors.dark0,
--       background = colors.background_dark,
--       background_dark = util.darken(colors.background_dark, 0.8),
--     },
--     ["medium"] = {
--       background = colors.background,
--       background_dark = util.darken(colors.background, 0.9),
--     },
--     ["soft"] = {
--       background = colors.background_light,
--       background_dark = util.darken(colors.background_light, 0.8),
--       background_light = util.lighten(colors.background_light, 0.95),
--     },
--     ["soft_flat"] = {
--       background = colors.background_light,
--       background_dark = colors.background_light,
--       background_light = util.lighten(colors.background_light, 0.95),
--     },
--   }
--
--   local background = config.background_color or colors.background
--   if intensity_map[background] then
--     colors = vim.tbl_extend("force", colors, intensity_map[background])
--   end
--
--   if config.transparent_mode then
--     local transparent = {
--       background = colors.none,
--       background_dark = colors.none,
--     }
--     colors = vim.tbl_extend("force", colors, transparent)
--   end
--
--   if config.color_overrides then
--     for override_color, new_color in pairs(config.color_overrides) do
--       colors[override_color] = new_color
--     end
--   end
--   return colors
-- end
--
-- return M
local util = require("bluebox.util")

local M = {}

local the_palette = {
  dark0 = "#0d1011",
  dark = "#1a2021",
  foreground = "#ebdbb2",
  background = "#282c34",
  background_dark = "#1d2228",
  background_light = "#32363f",
  medium_gray = "#4f5b66",
  comment = "#65737e",
  gray = "#c0c5ce",
  soft_yellow = "#e5c07b",
  soft_green = "#98c379",
  bright_yellow = "#fac863",
  orange = "#d08770",
  red = "#e06c75",
  error_red = "#bf616a",
  magenta = "#c678dd",
  pink = "#d787af",
  light_blue = "#61afef",
  dark_gray = "#6699cc",
  blue_gray = "#5c7d8c",
  forest_green = "#56b6c2",
  clean_green = "#8ec07c",
  milk = "#d8dee9",
  none = "NONE",
}

the_palette.term = {
  "#282c34",
  "#bf616a",
  "#98c379",
  "#fac863",
  "#6699cc",
  "#c678dd",
  "#56b6c2",
  "#ebdbb2",
  "#65737e",
  "#e06c75",
  "#a3be8c",
  "#e5c07b",
  "#61afef",
  "#d787af",
  "#8ec07c",
  "#c0c5ce",
}

-- these are backgrounds
the_palette.diff = {
  add = "#2c3b41",
  change = "#2b3b4d",
  delete = "#442e37",
  text = "#344b5a",
}
M.p = the_palette

local original_palette = vim.tbl_extend("force", the_palette, {
  foreground = "#d8dee9",
  soft_green = "#a3be8c",
  forest_green = "#a3be8c",
  soft_yellow = "#e5c07b",
  light_blue = "#61afef",
  magenta = "#d787af",
  orange = "#d08770",
  gray = "#65737e",
  comment = "#65737e",
})

function M.config(config)
  config = config or require("bluebox.config")
  local colors
  if config.use_original_palette then
    colors = original_palette
  else
    colors = the_palette
  end

  local intensity_map = {
    ["dark"] = {
      dark = colors.dark0,
      background = colors.background_dark,
      background_dark = util.darken(colors.background_dark, 0.8),
    },
    ["medium"] = {
      background = colors.background,
      background_dark = util.darken(colors.background, 0.9),
    },
    ["soft"] = {
      background = colors.background_light,
      background_dark = util.darken(colors.background_light, 0.8),
      background_light = util.lighten(colors.background_light, 0.95),
    },
    ["soft_flat"] = {
      background = colors.background_light,
      background_dark = colors.background_light,
      background_light = util.lighten(colors.background_light, 0.95),
    },
  }

  local background = config.background_color or colors.background
  if intensity_map[background] then
    colors = vim.tbl_extend("force", colors, intensity_map[background])
  end

  if config.transparent_mode then
    local transparent = {
      background = colors.none,
      background_dark = colors.none,
    }
    colors = vim.tbl_extend("force", colors, transparent)
  end

  if config.color_overrides then
    for override_color, new_color in pairs(config.color_overrides) do
      colors[override_color] = new_color
    end
  end
  return colors
end

return M
