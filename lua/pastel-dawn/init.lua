-- pastel-dawn/lua/pastel-dawn/init.lua
-- Pastel Dawn: a warm light Neovim theme
--
-- Inspirations:
--   • Catppuccin Latte  – warm pastel palette
--   • Rosé Pine Dawn    – soft creamy backgrounds
--   • Tonsky / Alabaster – minimal highlighting philosophy
--   • tonsky.me blog    – warm parchment bg, background-wash trick
--
-- Philosophy:
--   1. Most code is base text color — don't highlight everything.
--   2. Only 4-5 semantic categories get color (strings, numbers,
--      comments, definitions, types).
--   3. Colors that are hard to read on a light background get a
--      soft pastel background wash for high contrast.
--   4. Comments are BRIGHT (golden amber) — they matter!
--   5. Punctuation and keywords are dimmed, not colored.

local M = {}

local default_config = {
  transparent = false,
  dim_inactive = true,
  -- Toggle background washes on syntax elements
  bg_highlight = true,
  -- Set to false to make comments plain (no bg wash)
  comment_bg = true,
  -- Styles applied to specific syntax groups
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    strings = {},
    types = {},
  },
  -- Toggle integrations
  integrations = {
    telescope = true,
    cmp = true,
    blink_cmp = true,
    neo_tree = true,
    nvim_tree = true,
    gitsigns = true,
    indent_blankline = true,
    which_key = true,
    lazy = true,
    mason = true,
    noice = true,
    notify = true,
    mini = true,
    snacks = true,
    dashboard = true,
    bufferline = true,
    flash = true,
    trouble = true,
    todo_comments = true,
    render_markdown = true,
    fidget = true,
    navic = true,
    aerial = true,
    fzf_lua = true,
    oil = true,
    diffview = true,
    leap = true,
    rainbow_delimiters = true,
  },
  -- User override hooks
  on_highlights = function(highlights, colors) end,
  on_colors = function(colors) end,
}

M.config = vim.deepcopy(default_config)

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", default_config, opts or {})
end

function M.load()
  if vim.fn.has("nvim-0.9.0") ~= 1 then
    vim.notify("pastel-dawn requires Neovim >= 0.9.0", vim.log.levels.ERROR)
    return
  end

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "light"
  vim.g.colors_name = "pastel-dawn"

  local palette = require("pastel-dawn.palette")
  local c = vim.deepcopy(palette.colors)

  -- Allow user to mutate the palette before anything is applied
  M.config.on_colors(c)

  -- Apply config tweaks to color values
  if M.config.transparent then
    c.bg     = "NONE"
    c.bg_alt = "NONE"
  end

  if not M.config.bg_highlight then
    -- Remove all bg washes; syntax uses fg-only coloring
    c.green_bg = c.none
    c.teal_bg  = c.none
    c.gold_bg  = c.none
    c.iris_bg  = c.none
    c.rose_bg  = c.none
    c.blue_bg  = c.none
  end

  if not M.config.comment_bg then
    c.gold_bg = c.none
  end

  -- Collect all highlight groups from core + enabled integrations
  local groups = require("pastel-dawn.groups")
  local highlights = groups.setup(c, M.config)

  -- Allow user to override any highlight group
  M.config.on_highlights(highlights, c)

  -- Apply all highlights
  for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Terminal ANSI colors
  require("pastel-dawn.terminal").setup()
end

return M
