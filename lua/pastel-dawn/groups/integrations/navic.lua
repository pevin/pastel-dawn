local M = {}
function M.setup(c, opts)
  return {
    NavicText = { fg = c.fg_dim },
    NavicSeparator = { fg = c.surface2 },
    NavicIconsFile = { fg = c.fg_dim },
    NavicIconsModule = { fg = c.fg_dim },
    NavicIconsNamespace = { fg = c.fg_dim },
    NavicIconsPackage = { fg = c.fg_dim },
    NavicIconsClass = { fg = c.blue },
    NavicIconsMethod = { fg = c.fg },
    NavicIconsProperty = { fg = c.fg },
    NavicIconsField = { fg = c.fg },
    NavicIconsConstructor = { fg = c.iris },
    NavicIconsEnum = { fg = c.blue },
    NavicIconsInterface = { fg = c.blue },
    NavicIconsFunction = { fg = c.fg },
    NavicIconsVariable = { fg = c.fg },
    NavicIconsConstant = { fg = c.teal },
    NavicIconsString = { fg = c.green },
    NavicIconsNumber = { fg = c.teal },
    NavicIconsBoolean = { fg = c.teal },
    NavicIconsArray = { fg = c.fg },
    NavicIconsObject = { fg = c.fg },
    NavicIconsKey = { fg = c.iris },
    NavicIconsNull = { fg = c.fg_muted },
    NavicIconsEnumMember = { fg = c.teal },
    NavicIconsStruct = { fg = c.blue },
    NavicIconsEvent = { fg = c.rose },
    NavicIconsOperator = { fg = c.fg_dim },
    NavicIconsTypeParameter = { fg = c.blue },
  }
end
return M
