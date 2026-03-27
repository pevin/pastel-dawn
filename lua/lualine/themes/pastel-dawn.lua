-- pastel-dawn/lua/lualine/themes/pastel-dawn.lua
-- Lualine theme — generated from the pastel-dawn palette.
-- lualine expects this file at lua/lualine/themes/<name>.lua

local ok, lualine_int = pcall(require, "pastel-dawn.groups.integrations.lualine")
if ok and lualine_int.theme then
  local ok2, palette = pcall(require, "pastel-dawn.palette")
  if ok2 then
    return lualine_int.theme(palette.colors)
  end
end

-- Fallback using hardcoded palette values
return {
  normal = {
    a = { fg = "#faf6f0", bg = "#3568b2", gui = "bold" },
    b = { fg = "#6c6f85", bg = "#e8e0d6" },
    c = { fg = "#6c6f85", bg = "#f4ede5" },
  },
  insert = {
    a = { fg = "#faf6f0", bg = "#547c47", gui = "bold" },
    b = { fg = "#6c6f85", bg = "#e8e0d6" },
    c = { fg = "#6c6f85", bg = "#f4ede5" },
  },
  visual = {
    a = { fg = "#faf6f0", bg = "#7c5cad", gui = "bold" },
    b = { fg = "#6c6f85", bg = "#e8e0d6" },
    c = { fg = "#6c6f85", bg = "#f4ede5" },
  },
  replace = {
    a = { fg = "#faf6f0", bg = "#b4637a", gui = "bold" },
    b = { fg = "#6c6f85", bg = "#e8e0d6" },
    c = { fg = "#6c6f85", bg = "#f4ede5" },
  },
  command = {
    a = { fg = "#faf6f0", bg = "#9a7032", gui = "bold" },
    b = { fg = "#6c6f85", bg = "#e8e0d6" },
    c = { fg = "#6c6f85", bg = "#f4ede5" },
  },
  inactive = {
    a = { fg = "#9893a5", bg = "#f4ede5" },
    b = { fg = "#9893a5", bg = "#f4ede5" },
    c = { fg = "#9893a5", bg = "#f4ede5" },
  },
}
