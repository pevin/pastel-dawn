local M = {}
function M.setup(c, opts)
  -- Desaturated/muted versions for Alabaster philosophy
  return {
    RainbowDelimiterRed = { fg = "#b07070" },
    RainbowDelimiterYellow = { fg = "#a08040" },
    RainbowDelimiterBlue = { fg = "#6080b0" },
    RainbowDelimiterOrange = { fg = "#a07050" },
    RainbowDelimiterGreen = { fg = "#508060" },
    RainbowDelimiterViolet = { fg = "#8060a0" },
    RainbowDelimiterCyan = { fg = "#408080" },
  }
end
return M
