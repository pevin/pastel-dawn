local M = {}
function M.setup(c, opts)
  return {
    MasonNormal = { fg = c.fg, bg = c.bg_float },
    MasonHeader = { fg = c.bg, bg = c.iris, bold = true },
    MasonHeaderSecondary = { fg = c.bg, bg = c.teal, bold = true },
    MasonHighlight = { fg = c.iris },
    MasonHighlightBlock = { fg = c.bg, bg = c.iris },
    MasonHighlightBlockBold = { fg = c.bg, bg = c.iris, bold = true },
    MasonHighlightSecondary = { fg = c.teal },
    MasonHighlightBlockSecondary = { fg = c.bg, bg = c.teal },
    MasonHighlightBlockBoldSecondary = { fg = c.bg, bg = c.teal, bold = true },
    MasonLink = { fg = c.link, underline = true },
    MasonMuted = { fg = c.fg_muted },
    MasonMutedBlock = { fg = c.fg_muted, bg = c.surface0 },
    MasonMutedBlockBold = { fg = c.fg_dim, bg = c.surface0, bold = true },
    MasonError = { fg = c.error },
    MasonWarning = { fg = c.warn },
    MasonHeading = { fg = c.fg, bold = true },
  }
end
return M
