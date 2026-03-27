local M = {}
function M.setup(c, opts)
  return {
    DashboardHeader = { fg = c.iris },
    DashboardFooter = { fg = c.fg_muted, italic = true },
    DashboardCenter = { fg = c.fg },
    DashboardShortcut = { fg = c.gold },
    DashboardDesc = { fg = c.fg_dim },
    DashboardKey = { fg = c.gold },
    DashboardIcon = { fg = c.teal },
    -- Alpha (another dashboard plugin)
    AlphaHeader = { fg = c.iris },
    AlphaFooter = { fg = c.fg_muted, italic = true },
    AlphaButtons = { fg = c.fg_dim },
    AlphaShortcut = { fg = c.gold },
  }
end
return M
