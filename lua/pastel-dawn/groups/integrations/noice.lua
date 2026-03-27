local M = {}
function M.setup(c, opts)
  return {
    NoiceCmdline = { fg = c.fg, bg = c.surface0 },
    NoiceCmdlineIcon = { fg = c.blue },
    NoiceCmdlineIconSearch = { fg = c.gold },
    NoiceCmdlinePopup = { fg = c.fg, bg = c.bg_float },
    NoiceCmdlinePopupBorder = { fg = c.surface2, bg = c.bg_float },
    NoiceCmdlinePopupBorderSearch = { fg = c.gold, bg = c.bg_float },
    NoiceCmdlinePopupTitle = { fg = c.fg_dim, bg = c.bg_float, bold = true },
    NoiceConfirm = { fg = c.fg, bg = c.bg_float },
    NoiceConfirmBorder = { fg = c.blue, bg = c.bg_float },
    NoiceFormatConfirmDefault = { fg = c.bg, bg = c.blue },
    NoiceFormatConfirm = { fg = c.blue, bg = c.bg_float },
    NoiceLspProgressSpinner = { fg = c.teal },
    NoiceLspProgressTitle = { fg = c.fg_dim },
    NoiceLspProgressClient = { fg = c.blue },
    NoiceMini = { fg = c.fg, bg = c.surface0 },
    NoicePopup = { fg = c.fg, bg = c.bg_float },
    NoicePopupBorder = { fg = c.surface2, bg = c.bg_float },
    NoicePopupmenu = { fg = c.fg, bg = c.bg_float },
    NoicePopupmenuBorder = { fg = c.surface2, bg = c.bg_float },
    NoicePopupmenuSelected = { fg = c.fg, bg = c.bg_visual },
    NoiceScrollbar = { bg = c.surface0 },
    NoiceScrollbarThumb = { bg = c.surface2 },
    NoiceSplit = { fg = c.fg, bg = c.bg },
    NoiceSplitBorder = { fg = c.surface1 },
    NoiceVirtualText = { fg = c.fg_dim },
  }
end
return M
