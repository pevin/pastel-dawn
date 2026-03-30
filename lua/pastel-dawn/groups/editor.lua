-- pastel-dawn/lua/pastel-dawn/groups/editor.lua
-- Core editor UI highlight groups

local M = {}

function M.setup(c, opts)
  local transparent_bg = opts.transparent and c.none or c.bg

  return {
    -- Base
    Normal        = { fg = c.fg, bg = transparent_bg },
    NormalNC      = { fg = c.fg, bg = opts.dim_inactive and c.bg_alt or transparent_bg },
    NormalFloat   = { fg = c.fg, bg = c.bg_float },
    FloatBorder   = { fg = c.surface2, bg = c.bg_float },
    FloatTitle    = { fg = c.iris, bg = c.bg_float, bold = true },
    FloatFooter   = { fg = c.fg_muted, bg = c.bg_float },

    -- Cursor
    Cursor        = { fg = c.bg, bg = c.fg_muted }, -- normal mode cursor
    lCursor       = { fg = c.bg, bg = c.fg_muted }, -- cursor when language-mapping is active
    CursorIM      = { fg = c.bg, bg = c.fg_muted }, -- cursor in IME mode
    CursorLine    = { bg = c.bg_cursorline }, -- screen line at the cursor
    CursorColumn  = { bg = c.bg_cursorline }, -- screen column at the cursor
    CursorLineNr  = { fg = c.gold, bold = true }, -- line number of the cursor line
    ColorColumn   = { bg = c.bg_cursorline },
    LineNr        = { fg = c.fg_muted },
    LineNrAbove   = { fg = c.fg_faint },
    LineNrBelow   = { fg = c.fg_faint },

    -- Folds
    Folded        = { fg = c.fg_dim, bg = c.surface0 },
    FoldColumn    = { fg = c.fg_faint },

    -- Signs
    SignColumn    = { fg = c.fg_muted, bg = c.none },

    -- Window splits
    VertSplit     = { fg = c.surface1 },
    WinSeparator  = { fg = c.surface1 },
    WinBar        = { fg = c.fg_dim, bg = c.none },
    WinBarNC      = { fg = c.fg_muted, bg = c.none },

    -- Status & Tab line
    StatusLine    = { fg = c.fg, bg = c.surface0 },
    StatusLineNC  = { fg = c.fg_dim, bg = c.bg_alt },
    TabLine       = { fg = c.fg_dim, bg = c.surface0 },
    TabLineFill   = { bg = opts.transparent and c.none or c.bg_alt },
    TabLineSel    = { fg = c.fg, bg = c.bg, bold = true },

    -- Visual / Selection
    Visual        = { bg = c.bg_visual },
    VisualNOS     = { bg = c.bg_visual },

    -- Search
    Search        = { fg = c.fg, bg = c.bg_search },
    IncSearch     = { fg = c.bg, bg = c.gold },
    CurSearch     = { fg = c.bg, bg = c.gold },
    Substitute    = { fg = c.bg, bg = c.rose },

    -- Popup menu
    Pmenu         = { fg = c.fg, bg = c.bg_float },
    PmenuSel      = { fg = c.fg, bg = c.bg_visual },
    PmenuSbar     = { bg = c.surface0 },
    PmenuThumb    = { bg = c.surface2 },
    PmenuKind     = { fg = c.blue, bg = c.bg_float },
    PmenuKindSel  = { fg = c.blue, bg = c.bg_visual },
    PmenuExtra    = { fg = c.fg_muted, bg = c.bg_float },
    PmenuExtraSel = { fg = c.fg_muted, bg = c.bg_visual },

    -- Messages / prompts
    MsgArea       = { fg = c.fg },
    MsgSeparator  = { fg = c.surface2 },
    ModeMsg       = { fg = c.fg, bold = true },
    MoreMsg       = { fg = c.teal },
    Question      = { fg = c.teal },
    ErrorMsg      = { fg = c.error },
    WarningMsg    = { fg = c.warn },

    -- Misc UI
    Directory     = { fg = c.blue },
    Title         = { fg = c.iris, bold = true },
    SpecialKey    = { fg = c.fg_faint },
    NonText       = { fg = c.fg_faint },
    Whitespace    = { fg = c.fg_faint },
    EndOfBuffer   = { fg = c.bg_alt },
    Conceal       = { fg = c.fg_muted },
    MatchParen    = { bg = c.bg_visual, bold = true },
    WildMenu      = { fg = c.fg, bg = c.bg_visual, bold = true },
    QuickFixLine  = { bg = c.bg_visual, bold = true },

    -- Spell
    SpellBad      = { undercurl = true, sp = c.error },
    SpellCap      = { undercurl = true, sp = c.warn },
    SpellLocal    = { undercurl = true, sp = c.info },
    SpellRare     = { undercurl = true, sp = c.hint },

    -- Debug
    debugPC         = { bg = c.teal_bg },
    debugBreakpoint = { fg = c.error, bg = c.error_bg },

    -- Health
    healthError   = { fg = c.error },
    healthWarning = { fg = c.warn },
    healthSuccess = { fg = c.green },

    -- Terminal
    Terminal      = { fg = c.fg, bg = c.bg },
    TermCursor    = { fg = c.bg, bg = c.fg },
    TermCursorNC  = { fg = c.bg, bg = c.fg_muted },
  }
end

return M
