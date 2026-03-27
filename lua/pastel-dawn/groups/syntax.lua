-- pastel-dawn/lua/pastel-dawn/groups/syntax.lua
-- Vim built-in syntax highlight groups
-- Philosophy: minimal color — only a few semantic categories get accent colors.
-- Function CALLS are base fg. Definitions get iris via LSP semantic tokens.

local M = {}

function M.setup(c, opts)
  local function style(base, extra)
    return vim.tbl_extend("force", base, extra or {})
  end

  return {
    -- Comments: bright golden (Tonsky: comments are important!)
    Comment      = style({ fg = c.gold, bg = c.gold_bg }, opts.styles.comments),
    SpecialComment = style({ fg = c.gold, italic = true }, opts.styles.comments),

    -- Constants
    Constant     = { fg = c.teal, bg = c.teal_bg },
    String       = style({ fg = c.green, bg = c.green_bg }, opts.styles.strings),
    Character    = { fg = c.green, bg = c.green_bg },
    Number       = { fg = c.teal, bg = c.teal_bg },
    Boolean      = { fg = c.teal, bg = c.teal_bg },
    Float        = { fg = c.teal, bg = c.teal_bg },

    -- Identifiers: base color (Alabaster: don't highlight variables)
    Identifier   = { fg = c.fg },
    Function     = { fg = c.fg },   -- function CALLS: no color

    -- Statements / keywords: dimmed (Alabaster philosophy)
    Statement    = { fg = c.fg_dim },
    Conditional  = { fg = c.fg_dim },
    Repeat       = { fg = c.fg_dim },
    Label        = { fg = c.fg_dim },
    Operator     = { fg = c.fg_dim },
    Keyword      = style({ fg = c.fg_dim }, opts.styles.keywords),
    Exception    = { fg = c.fg_dim },

    -- Preprocessor / imports: rose
    PreProc      = { fg = c.rose, bg = c.rose_bg },
    Include      = { fg = c.rose, bg = c.rose_bg },
    Define       = { fg = c.rose, bg = c.rose_bg },
    Macro        = { fg = c.rose, bg = c.rose_bg },
    PreCondit    = { fg = c.rose, bg = c.rose_bg },

    -- Types: blue
    Type         = style({ fg = c.blue, bg = c.blue_bg }, opts.styles.types),
    StorageClass = { fg = c.blue },
    Structure    = { fg = c.blue },
    Typedef      = { fg = c.blue },

    -- Special
    Special      = { fg = c.rose },
    SpecialChar  = { fg = c.rose },
    Tag          = { fg = c.rose },
    Delimiter    = { fg = c.fg_dim },
    Debug        = { fg = c.rose },

    -- Underlined / decorations
    Underlined   = { fg = c.link, underline = true },
    Ignore       = { fg = c.fg_faint },
    Error        = { fg = c.error, bg = c.error_bg },
    Todo         = { fg = c.todo, bg = c.gold_bg, bold = true },

    -- Diff (for diff-syntax files, fugitive, etc.)
    diffAdded    = { fg = c.git_add },
    diffChanged  = { fg = c.git_change },
    diffRemoved  = { fg = c.git_delete },
    diffFile     = { fg = c.fg_dim, bold = true },
    diffLine     = { fg = c.fg_muted },
    diffIndexLine = { fg = c.iris },
    diffOldFile  = { fg = c.git_delete },
    diffNewFile  = { fg = c.git_add },
  }
end

return M
