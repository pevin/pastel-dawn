#!/usr/bin/env lua
-- scripts/generate.lua
-- Regenerates all extras files from palette.json
-- Usage: lua scripts/generate.lua

local json_path = arg and arg[0] and arg[0]:match("(.*/)")
if json_path then
  json_path = json_path .. "../palette.json"
else
  json_path = "palette.json"
end

-- Minimal JSON parser (handles flat objects and nested objects with string values)
local function parse_json(str)
  local function skip_ws(s, i)
    while i <= #s and s:sub(i, i):match("%s") do i = i + 1 end
    return i
  end

  local function parse_string(s, i)
    assert(s:sub(i, i) == '"', "expected '\"' at pos " .. i)
    i = i + 1
    local buf = {}
    while i <= #s do
      local c = s:sub(i, i)
      if c == '"' then return table.concat(buf), i + 1 end
      if c == "\\" then
        i = i + 1
        buf[#buf + 1] = s:sub(i, i)
      else
        buf[#buf + 1] = c
      end
      i = i + 1
    end
    error("unterminated string")
  end

  local parse_value  -- forward declaration

  local function parse_object(s, i)
    assert(s:sub(i, i) == '{', "expected '{' at pos " .. i)
    i = i + 1
    local t = {}
    i = skip_ws(s, i)
    if s:sub(i, i) == '}' then return t, i + 1 end
    while true do
      i = skip_ws(s, i)
      local key; key, i = parse_string(s, i)
      i = skip_ws(s, i)
      assert(s:sub(i, i) == ':', "expected ':' at pos " .. i)
      i = skip_ws(s, i + 1)
      local val; val, i = parse_value(s, i)
      t[key] = val
      i = skip_ws(s, i)
      local c = s:sub(i, i)
      if c == '}' then return t, i + 1 end
      assert(c == ',', "expected ',' or '}' at pos " .. i)
      i = i + 1
    end
  end

  parse_value = function(s, i)
    i = skip_ws(s, i)
    local c = s:sub(i, i)
    if c == '"' then return parse_string(s, i)
    elseif c == '{' then return parse_object(s, i)
    else error("unexpected char '" .. c .. "' at pos " .. i) end
  end

  local i = skip_ws(str, 1)
  local val = parse_value(str, i)
  return val
end

-- Read palette.json
local f = io.open(json_path, "r")
if not f then
  -- try relative to cwd
  f = io.open("palette.json", "r")
end
assert(f, "Could not open palette.json")
local raw = f:read("*a")
f:close()

local p = parse_json(raw)
local t = p.terminal

-- ── Generate Ghostty theme ────────────────────────────────────────────────

local ghostty = string.format([[
# Pastel Dawn — Ghostty theme
# https://github.com/pevin/pastel-dawn
#
# Install: copy this file to ~/.config/ghostty/themes/pastel-dawn
# then add to your Ghostty config:
#   theme = pastel-dawn

background = %s
foreground = %s

cursor-color = %s
cursor-text  = %s

selection-background = %s
selection-foreground = %s

# ANSI Normal (0-7)
palette = 0=%s
palette = 1=%s
palette = 2=%s
palette = 3=%s
palette = 4=%s
palette = 5=%s
palette = 6=%s
palette = 7=%s

# ANSI Bright (8-15)
palette = 8=%s
palette = 9=%s
palette = 10=%s
palette = 11=%s
palette = 12=%s
palette = 13=%s
palette = 14=%s
palette = 15=%s
]],
  p.bg, p.fg,
  p.rose, p.bg,
  p.bg_visual, p.fg,
  t.normal.black, t.normal.red, t.normal.green, t.normal.yellow,
  t.normal.blue, t.normal.magenta, t.normal.cyan, t.normal.white,
  t.bright.black, t.bright.red, t.bright.green, t.bright.yellow,
  t.bright.blue, t.bright.magenta, t.bright.cyan, t.bright.white
)

local out = io.open("extras/ghostty/pastel-dawn", "w")
assert(out, "Could not write extras/ghostty/pastel-dawn")
out:write(ghostty)
out:close()
print("wrote extras/ghostty/pastel-dawn")

-- ── Generate tmux theme ───────────────────────────────────────────────────

local tmux = string.format([[
# Pastel Dawn — tmux theme
# https://github.com/pevin/pastel-dawn
#
# Install: add the following line to your ~/.tmux.conf
#   source-file /path/to/pastel-dawn/extras/tmux/pastel-dawn.conf

# ── Pane borders ────────────────────────────────────────────────────────────
set -g pane-border-style         "fg=%s"
set -g pane-active-border-style  "fg=%s"

# ── Status bar ──────────────────────────────────────────────────────────────
set -g status                    on
set -g status-position           bottom
set -g status-style              "bg=%s,fg=%s"
set -g status-left-length        40
set -g status-right-length       60

set -g status-left  "#[bg=%s,fg=%s,bold] #S #[bg=%s,fg=%s] "
set -g status-right "#[fg=%s] %%H:%%M  %%d %%b "

# ── Window tabs ─────────────────────────────────────────────────────────────
setw -g window-status-style          "fg=%s,bg=%s"
setw -g window-status-format         " #I #W "
setw -g window-status-current-style  "fg=%s,bg=%s,bold"
setw -g window-status-current-format " #I #W "
setw -g window-status-separator      ""

# ── Messages / command line ─────────────────────────────────────────────────
set -g message-style         "bg=%s,fg=%s"
set -g message-command-style "bg=%s,fg=%s"

# ── Copy mode ───────────────────────────────────────────────────────────────
setw -g mode-style "bg=%s,fg=%s"
]],
  p.surface1, p.iris,
  p.bg_alt, p.fg_dim,
  p.iris, p.bg, p.bg_alt, p.iris,
  p.fg_muted,
  p.fg_muted, p.bg_alt,
  p.fg, p.bg_visual,
  p.bg_search, p.fg,
  p.bg_search, p.fg,
  p.bg_visual, p.fg
)

out = io.open("extras/tmux/pastel-dawn.conf", "w")
assert(out, "Could not write extras/tmux/pastel-dawn.conf")
out:write(tmux)
out:close()
print("wrote extras/tmux/pastel-dawn.conf")

print("done.")
