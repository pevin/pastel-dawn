-- pastel-dawn/lua/pastel-dawn/groups/treesitter.lua
-- Treesitter highlight groups
-- Philosophy matches highlights.lua: function CALLS = fg, definitions = iris via LSP.
-- Numbers/booleans = teal. Imports/preprocessor = rose. Types = blue.

local M = {}

function M.setup(c, opts)
  local function style(base, extra)
    return vim.tbl_extend("force", base, extra or {})
  end

  return {
    -- ── Comments ────────────────────────────────────────────
    ["@comment"]               = { link = "Comment" },
    ["@comment.documentation"] = { link = "Comment" },

    -- ── Literals ────────────────────────────────────────────
    ["@string"]                = { link = "String" },
    ["@string.documentation"]  = { fg = c.green, bg = c.green_bg },
    ["@string.regex"]          = { fg = c.rose, bg = c.rose_bg },
    ["@string.escape"]         = { fg = c.rose, bg = c.rose_bg },
    ["@string.special"]        = { fg = c.rose },
    ["@string.special.symbol"] = { fg = c.teal },
    ["@string.special.url"]    = { fg = c.link, underline = true },
    ["@character"]             = { link = "Character" },
    ["@character.special"]     = { fg = c.rose },
    ["@number"]                = { link = "Number" },
    ["@number.float"]          = { link = "Float" },
    ["@boolean"]               = { link = "Boolean" },
    ["@constant"]              = { fg = c.teal, bg = c.teal_bg },
    ["@constant.builtin"]      = { fg = c.teal, bg = c.teal_bg },
    ["@constant.macro"]        = { fg = c.teal, bg = c.teal_bg },

    -- ── Functions: CALLS = base fg, DEFINITIONS = iris via LSP ──
    ["@function"]              = style({ fg = c.fg }, opts.styles.functions),
    ["@function.builtin"]      = { fg = c.fg },
    ["@function.macro"]        = { fg = c.fg },
    ["@function.call"]         = { fg = c.fg },
    ["@function.method"]       = style({ fg = c.fg }, opts.styles.functions),
    ["@function.method.call"]  = { fg = c.fg },
    -- Legacy names
    ["@method"]                = style({ fg = c.fg }, opts.styles.functions),
    ["@method.call"]           = { fg = c.fg },

    -- ── Variables: ALL base color ────────────────────────────
    ["@variable"]              = style({ fg = c.fg }, opts.styles.variables),
    ["@variable.builtin"]      = { fg = c.fg },
    ["@variable.parameter"]    = { fg = c.fg },
    ["@variable.parameter.builtin"] = { fg = c.fg },
    ["@variable.member"]       = { fg = c.fg },
    -- Legacy
    ["@field"]                 = { fg = c.fg },

    -- ── Types: blue ──────────────────────────────────────────
    ["@type"]                  = style({ fg = c.blue, bg = c.blue_bg }, opts.styles.types),
    ["@type.builtin"]          = { fg = c.blue },
    ["@type.definition"]       = { fg = c.iris, bg = c.iris_bg, bold = true },
    ["@type.qualifier"]        = { fg = c.fg_dim },

    -- ── Keywords: dimmed (Alabaster) ─────────────────────────
    ["@keyword"]               = style({ fg = c.fg_dim }, opts.styles.keywords),
    ["@keyword.coroutine"]     = { fg = c.fg_dim },
    ["@keyword.function"]      = { fg = c.fg_dim },
    ["@keyword.operator"]      = { fg = c.fg_dim },
    ["@keyword.return"]        = { fg = c.fg_dim },
    ["@keyword.debug"]         = { fg = c.rose },
    ["@keyword.exception"]     = { fg = c.fg_dim },
    ["@keyword.conditional"]   = { fg = c.fg_dim },
    ["@keyword.conditional.ternary"] = { fg = c.fg_dim },
    ["@keyword.repeat"]        = { fg = c.fg_dim },
    ["@keyword.storage"]       = { fg = c.fg_dim },
    ["@keyword.import"]        = { fg = c.rose, bg = c.rose_bg },
    ["@keyword.directive"]     = { fg = c.rose, bg = c.rose_bg },
    ["@keyword.directive.define"] = { fg = c.rose, bg = c.rose_bg },
    -- Legacy
    ["@conditional"]           = { fg = c.fg_dim },
    ["@repeat"]                = { fg = c.fg_dim },
    ["@label"]                 = { fg = c.fg_dim },
    ["@exception"]             = { fg = c.fg_dim },
    ["@include"]               = { fg = c.rose, bg = c.rose_bg },
    ["@preproc"]               = { link = "PreProc" },

    -- ── Operators / punctuation: dimmed ──────────────────────
    ["@operator"]              = { fg = c.fg_dim },
    ["@punctuation.delimiter"] = { fg = c.fg_dim },
    ["@punctuation.bracket"]   = { fg = c.fg_dim },
    ["@punctuation.special"]   = { fg = c.fg_dim },

    -- ── Modules / namespaces ─────────────────────────────────
    ["@module"]                = { fg = c.fg },
    ["@module.builtin"]        = { fg = c.fg },
    ["@namespace"]             = { fg = c.fg },
    ["@label"]                 = { fg = c.fg_dim },

    -- ── Constructors ─────────────────────────────────────────
    ["@constructor"]           = { fg = c.iris, bg = c.iris_bg },

    -- ── Properties ───────────────────────────────────────────
    ["@property"]              = { fg = c.fg },

    -- ── Attributes / decorators ──────────────────────────────
    ["@attribute"]             = { fg = c.rose, bg = c.rose_bg },
    ["@attribute.builtin"]     = { fg = c.rose, bg = c.rose_bg },

    -- ── Tags (HTML/JSX) ──────────────────────────────────────
    ["@tag"]                   = { fg = c.rose },
    ["@tag.builtin"]           = { fg = c.rose },
    ["@tag.attribute"]         = { fg = c.fg },
    ["@tag.delimiter"]         = { fg = c.fg_dim },

    -- ── None / error ─────────────────────────────────────────
    ["@none"]                  = { fg = c.fg },
    ["@error"]                 = { link = "Error" },

    -- ── Text (legacy pre-0.10 style) ─────────────────────────
    ["@text"]                  = { fg = c.fg },
    ["@text.strong"]           = { bold = true },
    ["@text.emphasis"]         = { italic = true },
    ["@text.underline"]        = { underline = true },
    ["@text.strike"]           = { strikethrough = true },
    ["@text.title"]            = { fg = c.iris, bold = true },
    ["@text.literal"]          = { fg = c.green, bg = c.green_bg },
    ["@text.uri"]              = { fg = c.link, underline = true },
    ["@text.math"]             = { fg = c.teal },
    ["@text.reference"]        = { fg = c.link },
    ["@text.todo"]             = { link = "Todo" },
    ["@text.note"]             = { fg = c.info, bg = c.info_bg },
    ["@text.warning"]          = { fg = c.warn, bg = c.warn_bg },
    ["@text.danger"]           = { fg = c.error, bg = c.error_bg },
    ["@text.diff.add"]         = { bg = c.diff_add },
    ["@text.diff.delete"]      = { bg = c.diff_delete },

    -- ── Markup (Neovim 0.10+) ────────────────────────────────
    ["@markup.strong"]         = { bold = true },
    ["@markup.italic"]         = { italic = true },
    ["@markup.strikethrough"]  = { strikethrough = true },
    ["@markup.underline"]      = { underline = true },
    ["@markup.heading"]        = { fg = c.iris, bold = true },
    ["@markup.heading.1"]      = { fg = c.iris, bg = c.iris_bg, bold = true },
    ["@markup.heading.2"]      = { fg = c.blue, bg = c.blue_bg, bold = true },
    ["@markup.heading.3"]      = { fg = c.teal, bold = true },
    ["@markup.heading.4"]      = { fg = c.green, bold = true },
    ["@markup.heading.5"]      = { fg = c.gold, bold = true },
    ["@markup.heading.6"]      = { fg = c.rose, bold = true },
    ["@markup.quote"]          = { fg = c.fg_dim, italic = true },
    ["@markup.math"]           = { fg = c.teal },
    ["@markup.link"]           = { fg = c.link },
    ["@markup.link.url"]       = { fg = c.link, underline = true },
    ["@markup.link.label"]     = { fg = c.link },
    ["@markup.raw"]            = { fg = c.green, bg = c.green_bg },
    ["@markup.raw.block"]      = { bg = c.bg_alt },
    ["@markup.list"]           = { fg = c.fg_dim },

    -- ── Diff in treesitter ────────────────────────────────────
    ["@diff.plus"]             = { bg = c.diff_add },
    ["@diff.minus"]            = { bg = c.diff_delete },
    ["@diff.delta"]            = { bg = c.diff_change },
  }
end

return M
