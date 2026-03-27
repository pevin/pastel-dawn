local M = {}
function M.setup(c, opts)
  return {
    IblIndent = { fg = c.surface1 },
    IblScope = { fg = c.surface2 },
    IblWhitespace = { fg = c.surface1 },
    IndentBlanklineChar = { fg = c.surface1 },
    IndentBlanklineContextChar = { fg = c.surface2 },
    IndentBlanklineContextStart = { sp = c.surface2, underline = true },
    IndentBlanklineSpaceChar = { fg = c.surface1 },
    IndentBlanklineSpaceCharBlankline = { fg = c.surface1 },
  }
end
return M
