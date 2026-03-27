-- pastel-dawn/lua/pastel-dawn/palette.lua
-- Color palette blending Catppuccin Latte, Rosé Pine Dawn, and Tonsky blog aesthetics

local M = {}

M.colors = {
  -- ── Base UI colors ──────────────────────────────────────────────
  -- Warm cream background inspired by Tonsky's blog (#FFFFF2-ish)
  -- blended with Rosé Pine Dawn base (#faf4ed) and Catppuccin Latte base (#eff1f5)
  bg        = "#faf6f0",   -- main editor background: warm parchment
  bg_alt    = "#f4ede5",   -- sidebar / inactive background
  bg_float  = "#f0e8df",   -- floating windows, popups
  bg_visual = "#e8ddd1",   -- visual selection
  bg_search = "#f5e0b7",   -- search highlight (warm gold tint)
  bg_cursorline = "#f2ece4", -- subtle cursorline

  -- ── Surface / border colors ─────────────────────────────────────
  surface0  = "#e8e0d6",   -- lightest border
  surface1  = "#ddd4c8",   -- medium border / indent guides
  surface2  = "#cfc5b8",   -- stronger borders

  -- ── Text colors ─────────────────────────────────────────────────
  fg        = "#4c4f69",   -- primary text (Catppuccin Latte text)
  fg_dim    = "#6c6f85",   -- secondary text / punctuation
  fg_muted  = "#9893a5",   -- very muted: line numbers, fold columns
  fg_faint  = "#b5afc4",   -- very faint: indent guides, whitespace chars

  -- ── Syntax: Accent colors (restrained, Alabaster-inspired) ──────
  -- We use VERY few foreground accent colors. For colors that are
  -- hard to read on light backgrounds, we add a soft pastel bg behind them.

  -- Strings / constants: earthy green (readable on warm bg)
  green     = "#547c47",   -- string foreground
  green_bg  = "#e6f0e0",   -- soft green wash behind strings

  -- Numbers / booleans / special constants: warm teal-blue
  teal      = "#2b7d84",   -- number/bool foreground
  teal_bg   = "#ddf0f0",   -- soft teal wash behind numbers

  -- Comments: golden amber (Tonsky: comments should stand out!)
  gold      = "#9a7032",   -- comment foreground
  gold_bg   = "#f5eddb",   -- soft gold wash behind comments

  -- Top-level definitions (function names, class names): deep iris
  iris      = "#7c5cad",   -- definition foreground
  iris_bg   = "#ede6f5",   -- soft iris wash behind definitions

  -- Keywords: dusty rose (NOT highlighted per Alabaster, but if user
  -- wants them visible, they get a very gentle background)
  rose      = "#b4637a",   -- keyword foreground (Rosé Pine Dawn love)
  rose_bg   = "#f5e4e8",   -- soft rose wash behind keywords

  -- Types / builtins: warm sapphire
  blue      = "#3568b2",   -- type foreground
  blue_bg   = "#e2ecf8",   -- soft blue wash behind types

  -- ── Diagnostic / UI accent colors ───────────────────────────────
  error     = "#d20f39",   -- Catppuccin Latte red
  warn      = "#df8e1d",   -- Catppuccin Latte yellow
  info      = "#1e66f5",   -- Catppuccin Latte blue
  hint      = "#179299",   -- Catppuccin Latte teal

  error_bg  = "#fce4e8",
  warn_bg   = "#fdf0d8",
  info_bg   = "#e4ecfc",
  hint_bg   = "#ddf2f3",

  -- ── Diff colors ─────────────────────────────────────────────────
  diff_add      = "#dcefd4",
  diff_change   = "#e8e0cf",
  diff_delete   = "#f5d8d8",
  diff_text     = "#d4cfc0",

  -- ── Git gutter ──────────────────────────────────────────────────
  git_add    = "#549c3b",
  git_change = "#c08b30",
  git_delete = "#c94f5e",

  -- ── Special ─────────────────────────────────────────────────────
  link      = "#286983",   -- Rosé Pine Dawn pine
  todo      = "#ea9d34",   -- Rosé Pine Dawn gold
  none      = "NONE",
}

function M.get()
  return vim.deepcopy(M.colors)
end

return M
