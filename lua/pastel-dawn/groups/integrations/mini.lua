local M = {}
function M.setup(c, opts)
  return {
    -- mini.statusline
    MiniStatuslineModeNormal = { fg = c.bg, bg = c.blue, bold = true },
    MiniStatuslineModeInsert = { fg = c.bg, bg = c.green, bold = true },
    MiniStatuslineModeVisual = { fg = c.bg, bg = c.iris, bold = true },
    MiniStatuslineModeReplace = { fg = c.bg, bg = c.rose, bold = true },
    MiniStatuslineModeCommand = { fg = c.bg, bg = c.gold, bold = true },
    MiniStatuslineModeOther = { fg = c.bg, bg = c.fg_dim, bold = true },
    MiniStatuslineDevinfo = { fg = c.fg_dim, bg = c.surface0 },
    MiniStatuslineFilename = { fg = c.fg_dim, bg = c.bg_alt },
    MiniStatuslineFileinfo = { fg = c.fg_dim, bg = c.surface0 },
    MiniStatuslineInactive = { fg = c.fg_muted, bg = c.bg_alt },
    -- mini.tabline
    MiniTablineCurrent = { fg = c.fg, bg = c.bg, bold = true },
    MiniTablineVisible = { fg = c.fg_dim, bg = c.bg_alt },
    MiniTablineHidden = { fg = c.fg_muted, bg = c.surface0 },
    MiniTablineModifiedCurrent = { fg = c.warn, bg = c.bg, bold = true },
    MiniTablineModifiedVisible = { fg = c.warn, bg = c.bg_alt },
    MiniTablineModifiedHidden = { fg = c.warn, bg = c.surface0 },
    MiniTablineFill = { bg = c.surface0 },
    MiniTablineTabpagesection = { fg = c.fg, bg = c.surface0, bold = true },
    -- mini.completion
    MiniCompletionActiveParameter = { bg = c.gold_bg, bold = true },
    -- mini.cursorword
    MiniCursorword = { bg = c.surface0 },
    MiniCursorwordCurrent = { bg = c.surface0 },
    -- mini.indentscope
    MiniIndentscopeSymbol = { fg = c.surface2 },
    MiniIndentscopePrefix = { nocombine = true },
    -- mini.jump
    MiniJump = { fg = c.bg, bg = c.gold, bold = true },
    MiniJump2dSpot = { fg = c.gold, bold = true, nocombine = true },
    MiniJump2dSpotAhead = { fg = c.teal, nocombine = true },
    MiniJump2dSpotUnique = { fg = c.gold, bold = true, nocombine = true },
    MiniJump2dDim = { fg = c.fg_muted },
    -- mini.surround
    MiniSurround = { fg = c.bg, bg = c.gold },
    -- mini.notify
    MiniNotifyBorder = { fg = c.surface2, bg = c.bg_float },
    MiniNotifyNormal = { fg = c.fg, bg = c.bg_float },
    MiniNotifyTitle = { fg = c.fg_dim, bg = c.bg_float, bold = true },
    -- mini.pick
    MiniPickBorder = { fg = c.surface2, bg = c.bg_float },
    MiniPickBorderBusy = { fg = c.warn, bg = c.bg_float },
    MiniPickBorderText = { fg = c.fg_dim, bg = c.bg_float },
    MiniPickHeader = { fg = c.iris, bg = c.bg_float, bold = true },
    MiniPickIconDirectory = { fg = c.blue, bg = c.bg_float },
    MiniPickIconFile = { fg = c.fg_dim, bg = c.bg_float },
    MiniPickMatchCurrent = { fg = c.fg, bg = c.bg_visual },
    MiniPickMatchMarked = { fg = c.fg, bg = c.iris_bg },
    MiniPickMatchRanges = { fg = c.gold, bold = true },
    MiniPickNormal = { fg = c.fg, bg = c.bg_float },
    MiniPickPreviewLine = { bg = c.bg_cursorline },
    MiniPickPreviewRegion = { bg = c.gold_bg },
    MiniPickPrompt = { fg = c.iris, bg = c.bg_float },
    -- mini.clue
    MiniClueBorder = { fg = c.surface2, bg = c.bg_float },
    MiniClueDescGroup = { fg = c.iris },
    MiniClueDescSingle = { fg = c.fg },
    MiniClueNextKey = { fg = c.blue, bold = true },
    MiniClueNextKeyWithPostkeys = { fg = c.teal, bold = true },
    MiniClueSeparator = { fg = c.fg_muted },
    MiniClueTitle = { fg = c.fg_dim, bg = c.bg_float, bold = true },
    -- mini.diff
    MiniDiffSignAdd = { fg = c.git_add },
    MiniDiffSignChange = { fg = c.git_change },
    MiniDiffSignDelete = { fg = c.git_delete },
    MiniDiffOverAdd = { bg = c.diff_add },
    MiniDiffOverChange = { bg = c.diff_change },
    MiniDiffOverContext = { bg = c.bg_cursorline },
    MiniDiffOverDelete = { bg = c.diff_delete },
    -- mini.files
    MiniFilesDirectory = { fg = c.blue },
    MiniFilesFile = { fg = c.fg },
    MiniFilesTitleFocused = { fg = c.iris, bold = true },
    MiniFilesTitle = { fg = c.fg_dim },
    MiniFilesNormal = { fg = c.fg, bg = c.bg_float },
    MiniFilesBorder = { fg = c.surface2, bg = c.bg_float },
    MiniFilesBorderModified = { fg = c.warn, bg = c.bg_float },
    MiniFilesCursorLine = { bg = c.bg_cursorline },
  }
end
return M
