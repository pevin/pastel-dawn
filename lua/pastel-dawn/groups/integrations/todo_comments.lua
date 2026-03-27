local M = {}
function M.setup(c, opts)
  return {
    -- Background badges
    TodoBgFIX = { fg = c.bg, bg = c.error, bold = true },
    TodoBgHACK = { fg = c.bg, bg = c.warn, bold = true },
    TodoBgNOTE = { fg = c.bg, bg = c.teal, bold = true },
    TodoBgPERF = { fg = c.bg, bg = c.iris, bold = true },
    TodoBgTEST = { fg = c.bg, bg = c.gold, bold = true },
    TodoBgTODO = { fg = c.bg, bg = c.blue, bold = true },
    TodoBgWARN = { fg = c.bg, bg = c.warn, bold = true },
    -- Foreground only
    TodoFgFIX = { fg = c.error },
    TodoFgHACK = { fg = c.warn },
    TodoFgNOTE = { fg = c.teal },
    TodoFgPERF = { fg = c.iris },
    TodoFgTEST = { fg = c.gold },
    TodoFgTODO = { fg = c.blue },
    TodoFgWARN = { fg = c.warn },
    -- Sign column
    TodoSignFIX = { fg = c.error },
    TodoSignHACK = { fg = c.warn },
    TodoSignNOTE = { fg = c.teal },
    TodoSignPERF = { fg = c.iris },
    TodoSignTEST = { fg = c.gold },
    TodoSignTODO = { fg = c.blue },
    TodoSignWARN = { fg = c.warn },
  }
end
return M
