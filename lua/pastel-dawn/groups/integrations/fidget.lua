local M = {}
function M.setup(c, opts)
  return {
    FidgetTitle = { fg = c.fg_dim, bold = true },
    FidgetTask = { fg = c.fg_muted },
  }
end
return M
