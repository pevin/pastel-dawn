local M = {}
function M.setup(c, opts)
  return {
    NotifyBackground = { fg = c.fg, bg = c.bg_float },
    NotifyERRORBorder = { fg = c.error, bg = c.bg_float },
    NotifyWARNBorder = { fg = c.warn, bg = c.bg_float },
    NotifyINFOBorder = { fg = c.info, bg = c.bg_float },
    NotifyDEBUGBorder = { fg = c.fg_muted, bg = c.bg_float },
    NotifyTRACEBorder = { fg = c.iris, bg = c.bg_float },
    NotifyERRORIcon = { fg = c.error },
    NotifyWARNIcon = { fg = c.warn },
    NotifyINFOIcon = { fg = c.info },
    NotifyDEBUGIcon = { fg = c.fg_muted },
    NotifyTRACEIcon = { fg = c.iris },
    NotifyERRORTitle = { fg = c.error, bold = true },
    NotifyWARNTitle = { fg = c.warn, bold = true },
    NotifyINFOTitle = { fg = c.info, bold = true },
    NotifyDEBUGTitle = { fg = c.fg_muted, bold = true },
    NotifyTRACETitle = { fg = c.iris, bold = true },
    NotifyERRORBody = { fg = c.fg, bg = c.bg_float },
    NotifyWARNBody = { fg = c.fg, bg = c.bg_float },
    NotifyINFOBody = { fg = c.fg, bg = c.bg_float },
    NotifyDEBUGBody = { fg = c.fg, bg = c.bg_float },
    NotifyTRACEBody = { fg = c.fg, bg = c.bg_float },
  }
end
return M
