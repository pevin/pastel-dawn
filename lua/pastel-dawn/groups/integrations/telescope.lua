local M = {}
function M.setup(c, opts)
  return {
    TelescopeNormal = { fg = c.fg, bg = c.bg_float },
    TelescopeBorder = { fg = c.surface2, bg = c.bg_float },
    TelescopeTitle = { fg = c.iris, bg = c.bg_float, bold = true },
    TelescopePromptNormal = { fg = c.fg, bg = c.surface0 },
    TelescopePromptBorder = { fg = c.surface1, bg = c.surface0 },
    TelescopePromptTitle = { fg = c.iris, bg = c.surface0, bold = true },
    TelescopePromptPrefix = { fg = c.iris, bg = c.surface0 },
    TelescopePromptCounter = { fg = c.fg_muted, bg = c.surface0 },
    TelescopeResultsNormal = { fg = c.fg, bg = c.bg_float },
    TelescopeResultsBorder = { fg = c.surface2, bg = c.bg_float },
    TelescopeResultsTitle = { fg = c.fg_muted, bg = c.bg_float },
    TelescopePreviewNormal = { fg = c.fg, bg = c.bg },
    TelescopePreviewBorder = { fg = c.surface2, bg = c.bg },
    TelescopePreviewTitle = { fg = c.teal, bg = c.bg, bold = true },
    TelescopeSelection = { fg = c.fg, bg = c.bg_visual },
    TelescopeSelectionCaret = { fg = c.iris, bg = c.bg_visual },
    TelescopeMultiSelection = { fg = c.fg, bg = c.iris_bg },
    TelescopeMatching = { fg = c.iris, bold = true },
  }
end
return M
