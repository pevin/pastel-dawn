local M = {}

function M.setup(colors, opts)
  local groups = {}

  local modules = {
    "pastel-dawn.groups.editor",
    "pastel-dawn.groups.syntax",
    "pastel-dawn.groups.treesitter",
    "pastel-dawn.groups.lsp",
    "pastel-dawn.groups.diff",
  }

  for _, mod in ipairs(modules) do
    local ok, m = pcall(require, mod)
    if ok then
      groups = vim.tbl_extend("force", groups, m.setup(colors, opts))
    end
  end

  -- Load enabled integrations
  local integrations_path = "pastel-dawn.groups.integrations."
  for name, enabled in pairs(opts.integrations) do
    if enabled then
      local ok, m = pcall(require, integrations_path .. name)
      if ok then
        groups = vim.tbl_extend("force", groups, m.setup(colors, opts))
      end
    end
  end

  return groups
end

return M
