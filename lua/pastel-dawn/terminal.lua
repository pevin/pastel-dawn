-- pastel-dawn/lua/pastel-dawn/terminal.lua
-- Terminal (ANSI) color mappings

local M = {}

function M.setup()
  local c = require("pastel-dawn.palette").colors

  -- ANSI Normal
  vim.g.terminal_color_0  = c.surface0    -- black
  vim.g.terminal_color_1  = c.rose        -- red
  vim.g.terminal_color_2  = c.green       -- green
  vim.g.terminal_color_3  = c.gold        -- yellow
  vim.g.terminal_color_4  = c.blue        -- blue
  vim.g.terminal_color_5  = c.iris        -- magenta
  vim.g.terminal_color_6  = c.teal        -- cyan
  vim.g.terminal_color_7  = c.fg          -- white

  -- ANSI Bright
  vim.g.terminal_color_8  = c.surface2    -- bright black
  vim.g.terminal_color_9  = "#c94f5e"     -- bright red
  vim.g.terminal_color_10 = "#5e9a4d"     -- bright green
  vim.g.terminal_color_11 = "#b8932a"     -- bright yellow
  vim.g.terminal_color_12 = "#4a7ecc"     -- bright blue
  vim.g.terminal_color_13 = "#9472c4"     -- bright magenta
  vim.g.terminal_color_14 = "#379a9f"     -- bright cyan
  vim.g.terminal_color_15 = c.fg_dim      -- bright white
end

return M
