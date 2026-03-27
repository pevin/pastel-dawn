local M = {}
function M.setup(c, opts)
  -- This module handles the lualine highlight groups
  -- The actual theme file at lua/lualine/themes/pastel-dawn.lua
  -- requires this to build its table
  return {}
end

function M.theme(c)
  local theme = {
    normal = {
      a = { fg = c.bg, bg = c.blue, gui = "bold" },
      b = { fg = c.fg_dim, bg = c.surface0 },
      c = { fg = c.fg_dim, bg = c.bg_alt },
    },
    insert = {
      a = { fg = c.bg, bg = c.green, gui = "bold" },
      b = { fg = c.fg_dim, bg = c.surface0 },
      c = { fg = c.fg_dim, bg = c.bg_alt },
    },
    visual = {
      a = { fg = c.bg, bg = c.iris, gui = "bold" },
      b = { fg = c.fg_dim, bg = c.surface0 },
      c = { fg = c.fg_dim, bg = c.bg_alt },
    },
    replace = {
      a = { fg = c.bg, bg = c.rose, gui = "bold" },
      b = { fg = c.fg_dim, bg = c.surface0 },
      c = { fg = c.fg_dim, bg = c.bg_alt },
    },
    command = {
      a = { fg = c.bg, bg = c.gold, gui = "bold" },
      b = { fg = c.fg_dim, bg = c.surface0 },
      c = { fg = c.fg_dim, bg = c.bg_alt },
    },
    inactive = {
      a = { fg = c.fg_muted, bg = c.bg_alt },
      b = { fg = c.fg_muted, bg = c.bg_alt },
      c = { fg = c.fg_muted, bg = c.bg_alt },
    },
  }
  return theme
end

return M
