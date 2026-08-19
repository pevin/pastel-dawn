-- pastel-dawn/lua/pastel-dawn/terminal.lua
-- Terminal (ANSI) color mappings
--
-- Values come straight from palette.json's `terminal` table, so Neovim's
-- built-in :terminal and the generated Ghostty/tmux themes always agree.

local M = {}

local order = {
  "black",
  "red",
  "green",
  "yellow",
  "blue",
  "magenta",
  "cyan",
  "white",
}

function M.setup()
  local t = require("pastel-dawn.palette").terminal

  for i, name in ipairs(order) do
    -- ANSI Normal 0-7, then ANSI Bright 8-15
    vim.g["terminal_color_" .. (i - 1)] = t.normal[name]
    vim.g["terminal_color_" .. (i + 7)] = t.bright[name]
  end
end

return M
