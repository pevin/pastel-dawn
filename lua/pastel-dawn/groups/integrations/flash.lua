local M = {}
function M.setup(c, opts)
  return {
    FlashBackdrop = { fg = c.fg_muted },
    FlashMatch = { fg = c.bg, bg = c.gold },
    FlashCurrent = { fg = c.bg, bg = c.rose },
    FlashLabel = { fg = c.bg, bg = c.iris, bold = true },
    FlashPrompt = { fg = c.fg, bg = c.surface0 },
    FlashPromptIcon = { fg = c.iris, bg = c.surface0 },
    FlashCursor = { fg = c.bg, bg = c.fg },
  }
end
return M
