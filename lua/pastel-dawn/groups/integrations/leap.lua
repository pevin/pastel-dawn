local M = {}
function M.setup(c, opts)
  return {
    LeapBackdrop = { fg = c.fg_muted },
    LeapMatch = { fg = c.bg, bg = c.gold, bold = true },
    LeapLabelPrimary = { fg = c.bg, bg = c.iris, bold = true },
    LeapLabelSecondary = { fg = c.bg, bg = c.teal, bold = true },
    LeapLabelSelected = { fg = c.bg, bg = c.blue, bold = true },
  }
end
return M
