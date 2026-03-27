local M = {}
function M.setup(c, opts)
  return {
    WhichKey = { fg = c.iris },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.fg_muted },
    WhichKeyValue = { fg = c.fg_muted },
    WhichKeyBorder = { fg = c.surface2, bg = c.bg_float },
    WhichKeyNormal = { fg = c.fg, bg = c.bg_float },
    WhichKeyTitle = { fg = c.fg_dim, bg = c.bg_float, bold = true },
    WhichKeyIcon = { fg = c.blue },
    WhichKeyIconAzure = { fg = c.blue },
    WhichKeyIconBlue = { fg = c.blue },
    WhichKeyIconCyan = { fg = c.teal },
    WhichKeyIconGreen = { fg = c.green },
    WhichKeyIconGrey = { fg = c.fg_muted },
    WhichKeyIconOrange = { fg = c.warn },
    WhichKeyIconPurple = { fg = c.iris },
    WhichKeyIconRed = { fg = c.rose },
    WhichKeyIconYellow = { fg = c.gold },
  }
end
return M
