local M = {}
function M.setup(c, opts)
  return {
    OilDir = { fg = c.blue },
    OilDirIcon = { fg = c.blue },
    OilFile = { fg = c.fg },
    OilFileIcon = { fg = c.fg_dim },
    OilSocket = { fg = c.teal },
    OilLink = { fg = c.teal },
    OilLinkTarget = { fg = c.teal, italic = true },
    OilOrphanLink = { fg = c.rose },
    OilOrphanLinkTarget = { fg = c.rose, italic = true },
    OilCopy = { fg = c.none, bg = c.green_bg },
    OilMove = { fg = c.none, bg = c.gold_bg },
    OilChange = { fg = c.none, bg = c.diff_change },
    OilCreate = { fg = c.none, bg = c.diff_add },
    OilDelete = { fg = c.none, bg = c.diff_delete },
    OilPermissionNone = { fg = c.fg_muted },
    OilPermissionRead = { fg = c.gold },
    OilPermissionWrite = { fg = c.rose },
    OilPermissionExecute = { fg = c.green },
    OilTypeFile = { fg = c.fg_muted },
    OilTypeDirectory = { fg = c.blue },
    OilTypeLink = { fg = c.teal },
    OilTypeSpecial = { fg = c.iris },
    OilSize = { fg = c.fg_muted },
    OilMtime = { fg = c.fg_muted },
  }
end
return M
