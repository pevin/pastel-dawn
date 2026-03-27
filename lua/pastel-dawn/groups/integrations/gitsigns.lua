local M = {}
function M.setup(c, opts)
  return {
    GitSignsAdd = { fg = c.git_add },
    GitSignsChange = { fg = c.git_change },
    GitSignsDelete = { fg = c.git_delete },
    GitSignsTopdelete = { fg = c.git_delete },
    GitSignsChangedelete = { fg = c.git_change },
    GitSignsUntracked = { fg = c.fg_muted },
    GitSignsAddNr = { fg = c.git_add },
    GitSignsChangeNr = { fg = c.git_change },
    GitSignsDeleteNr = { fg = c.git_delete },
    GitSignsTopdeleteNr = { fg = c.git_delete },
    GitSignsChangedeleteNr = { fg = c.git_change },
    GitSignsAddLn = { bg = c.diff_add },
    GitSignsChangeLn = { bg = c.diff_change },
    GitSignsCurrentLineBlame = { fg = c.fg_muted, italic = true },
    GitSignsAddInline = { bg = c.diff_add },
    GitSignsChangeInline = { bg = c.diff_change },
    GitSignsDeleteInline = { bg = c.diff_delete },
  }
end
return M
