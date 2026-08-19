-- pastel-dawn/lua/pastel-dawn/palette.lua
-- Color palette blending Catppuccin Latte, Rosé Pine Dawn, and Tonsky blog aesthetics
--
-- SINGLE SOURCE OF TRUTH: palette.json at the repo root.

local M = {}

-- Resolve palette.json relative to this file: lua/pastel-dawn/palette.lua -> root
local function palette_path()
  local this = debug.getinfo(1, "S").source:sub(2)
  return vim.fn.fnamemodify(this, ":h:h:h") .. "/palette.json"
end

local function load_json()
  local path = palette_path()
  local fd = io.open(path, "r")
  if not fd then
    error("pastel-dawn: could not read " .. path)
  end
  local raw = fd:read("*a")
  fd:close()
  return vim.json.decode(raw)
end

local data = load_json()

M.colors = {}
for key, value in pairs(data) do
  -- Skip the nested `terminal` table; only flat color strings belong here.
  if type(value) == "string" then
    M.colors[key] = value
  end
end

-- `NONE` is a Neovim highlight keyword rather than a color, so it is not in
-- palette.json (a terminal has no use for it) and is defined here instead.
M.colors.none = "NONE"

-- ANSI 0-15, as { normal = {...}, bright = {...} }
M.terminal = data.terminal

function M.get()
  return vim.deepcopy(M.colors)
end

return M
