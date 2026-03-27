local M = {}
function M.setup(c, opts)
  return {
    FzfLuaNormal = { fg = c.fg, bg = c.bg_float },
    FzfLuaBorder = { fg = c.surface2, bg = c.bg_float },
    FzfLuaTitle = { fg = c.fg_dim, bg = c.bg_float, bold = true },
    FzfLuaPreviewTitle = { fg = c.teal, bg = c.bg, bold = true },
    FzfLuaHeaderText = { fg = c.fg_dim },
    FzfLuaHeaderBind = { fg = c.gold },
    FzfLuaCursorLine = { bg = c.bg_cursorline },
    FzfLuaCursorLineNr = { fg = c.fg_dim, bg = c.bg_cursorline },
    FzfLuaSearch = { fg = c.iris, bold = true },
    FzfLuaBufName = { fg = c.blue },
    FzfLuaBufNr = { fg = c.fg_muted },
    FzfLuaBufFlagCur = { fg = c.gold },
    FzfLuaBufFlagAlt = { fg = c.teal },
    FzfLuaTabTitle = { fg = c.blue, bold = true },
    FzfLuaTabMarker = { fg = c.gold, bold = true },
    FzfLuaPathColNr = { fg = c.fg_muted },
    FzfLuaPathLineNr = { fg = c.fg_muted },
    FzfLuaLiveSym = { fg = c.iris },
    FzfLuaScrollBorderEmpty = { fg = c.surface1, bg = c.bg_float },
    FzfLuaScrollBorderFull = { fg = c.surface2, bg = c.bg_float },
    FzfLuaScrollFloatEmpty = { fg = c.surface1, bg = c.bg_float },
    FzfLuaScrollFloatFull = { fg = c.surface2, bg = c.bg_float },
    FzfLuaPreviewNormal = { fg = c.fg, bg = c.bg },
    FzfLuaPreviewBorder = { fg = c.surface2, bg = c.bg },
  }
end
return M
