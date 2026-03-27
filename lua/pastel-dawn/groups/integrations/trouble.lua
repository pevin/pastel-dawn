local M = {}
function M.setup(c, opts)
  return {
    TroubleNormal = { fg = c.fg, bg = c.bg_alt },
    TroubleNormalNC = { fg = c.fg, bg = c.bg_alt },
    TroubleText = { fg = c.fg },
    TroubleCount = { fg = c.iris, bg = c.surface0 },
    TroubleCode = { fg = c.fg_dim },
    TroubleFile = { fg = c.blue },
    TroubleLocation = { fg = c.fg_muted },
    TroublePreview = { bg = c.bg_visual },
    TroubleIconError = { fg = c.error },
    TroubleIconWarn = { fg = c.warn },
    TroubleIconInfo = { fg = c.info },
    TroubleIconHint = { fg = c.hint },
    TroubleIconDirectory = { fg = c.blue },
    TroubleIconFile = { fg = c.fg_dim },
    TroublePos = { fg = c.fg_muted },
    TroubleSource = { fg = c.fg_muted },
    TroubleDirectory = { fg = c.blue },
    TroubleIndent = { fg = c.surface1 },
    TroubleIndentFoldOpen = { fg = c.surface2 },
    TroubleIndentFoldClosed = { fg = c.surface2 },
    TroubleIndentMiddleLast = { fg = c.surface1 },
    TroubleIndentEnd = { fg = c.surface1 },
    TroubleIndentWs = { fg = c.surface1 },
  }
end
return M
