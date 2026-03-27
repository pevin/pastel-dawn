-- pastel-dawn/lua/pastel-dawn/groups/lsp.lua
-- LSP semantic token highlights and diagnostics
-- Key philosophy: function/method DECLARATIONS get iris (the landmark pop),
-- ordinary variables/parameters/properties stay base fg.

local M = {}

function M.setup(c, opts)
  return {
    -- ── Diagnostics ──────────────────────────────────────────
    DiagnosticError            = { fg = c.error },
    DiagnosticWarn             = { fg = c.warn },
    DiagnosticInfo             = { fg = c.info },
    DiagnosticHint             = { fg = c.hint },
    DiagnosticOk               = { fg = c.green },

    DiagnosticVirtualTextError = { fg = c.error, bg = c.error_bg },
    DiagnosticVirtualTextWarn  = { fg = c.warn,  bg = c.warn_bg },
    DiagnosticVirtualTextInfo  = { fg = c.info,  bg = c.info_bg },
    DiagnosticVirtualTextHint  = { fg = c.hint,  bg = c.hint_bg },
    DiagnosticVirtualTextOk    = { fg = c.green, bg = c.hint_bg },

    DiagnosticUnderlineError   = { undercurl = true, sp = c.error },
    DiagnosticUnderlineWarn    = { undercurl = true, sp = c.warn },
    DiagnosticUnderlineInfo    = { undercurl = true, sp = c.info },
    DiagnosticUnderlineHint    = { undercurl = true, sp = c.hint },
    DiagnosticUnderlineOk      = { undercurl = true, sp = c.green },

    DiagnosticFloatingError    = { fg = c.error, bg = c.bg_float },
    DiagnosticFloatingWarn     = { fg = c.warn,  bg = c.bg_float },
    DiagnosticFloatingInfo     = { fg = c.info,  bg = c.bg_float },
    DiagnosticFloatingHint     = { fg = c.hint,  bg = c.bg_float },

    DiagnosticSignError        = { fg = c.error },
    DiagnosticSignWarn         = { fg = c.warn },
    DiagnosticSignInfo         = { fg = c.info },
    DiagnosticSignHint         = { fg = c.hint },

    -- ── LSP References ───────────────────────────────────────
    LspReferenceText           = { bg = c.surface0 },
    LspReferenceRead           = { bg = c.blue_bg },
    LspReferenceWrite          = { bg = c.iris_bg },

    -- ── Inlay hints ──────────────────────────────────────────
    LspInlayHint               = { fg = c.fg_muted, bg = c.surface0, italic = true },

    -- ── Signature help ───────────────────────────────────────
    LspSignatureActiveParameter = { bg = c.gold_bg, bold = true },

    -- ── Code lens ────────────────────────────────────────────
    LspCodeLens                = { fg = c.fg_muted, italic = true },
    LspCodeLensSeparator       = { fg = c.surface2 },

    -- ── LSP semantic types (@lsp.type.*) ─────────────────────
    ["@lsp.type.variable"]     = { fg = c.fg },
    ["@lsp.type.parameter"]    = { fg = c.fg },
    ["@lsp.type.property"]     = { fg = c.fg },
    ["@lsp.type.function"]     = { fg = c.fg },
    ["@lsp.type.method"]       = { fg = c.fg },
    ["@lsp.type.namespace"]    = { fg = c.fg },
    ["@lsp.type.type"]         = { fg = c.blue, bg = c.blue_bg },
    ["@lsp.type.class"]        = { fg = c.blue, bg = c.blue_bg },
    ["@lsp.type.interface"]    = { fg = c.blue, bg = c.blue_bg },
    ["@lsp.type.struct"]       = { fg = c.blue, bg = c.blue_bg },
    ["@lsp.type.enum"]         = { fg = c.blue, bg = c.blue_bg },
    ["@lsp.type.enumMember"]   = { fg = c.teal, bg = c.teal_bg },
    ["@lsp.type.typeParameter"] = { fg = c.blue },
    ["@lsp.type.keyword"]      = { fg = c.fg_dim },
    ["@lsp.type.comment"]      = { link = "Comment" },
    ["@lsp.type.string"]       = { link = "String" },
    ["@lsp.type.number"]       = { link = "Number" },
    ["@lsp.type.decorator"]    = { fg = c.rose, bg = c.rose_bg },
    ["@lsp.type.macro"]        = { fg = c.rose, bg = c.rose_bg },
    ["@lsp.type.regexp"]       = { fg = c.rose, bg = c.rose_bg },
    ["@lsp.type.operator"]     = { fg = c.fg_dim },
    ["@lsp.type.event"]        = { fg = c.teal },

    -- ── LSP modifiers (@lsp.mod.*) ───────────────────────────
    -- No bold — target aesthetic avoids bold on declarations
    ["@lsp.mod.declaration"]   = {},
    ["@lsp.mod.definition"]    = {},

    -- ── LSP type modifiers (@lsp.typemod.*) ─────────────────
    -- Definitions (structural landmarks): iris + subtle bg wash, no bold
    ["@lsp.typemod.function.declaration"]  = { fg = c.iris, bg = c.iris_bg },
    ["@lsp.typemod.function.definition"]   = { fg = c.iris, bg = c.iris_bg },
    ["@lsp.typemod.method.declaration"]    = { fg = c.iris, bg = c.iris_bg },
    ["@lsp.typemod.method.definition"]     = { fg = c.iris, bg = c.iris_bg },
    ["@lsp.typemod.class.declaration"]     = { fg = c.iris, bg = c.iris_bg },
    ["@lsp.typemod.variable.readonly"]     = { fg = c.teal, bg = c.teal_bg },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = c.fg },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = c.fg },
    ["@lsp.typemod.operator.injected"]     = { fg = c.fg_dim },
    ["@lsp.typemod.string.injected"]       = { fg = c.green, bg = c.green_bg },
    ["@lsp.typemod.variable.injected"]     = { fg = c.fg },
  }
end

return M
