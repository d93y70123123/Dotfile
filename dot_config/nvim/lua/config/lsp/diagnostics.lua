-- add diagnostics to the LSP client
-- 設置LSP診斷圖示
local diagnostics = {
  underline = true,
  update_in_insert = false,
  virtual_text = {
    spacing = 4,
    source = "if_many",
    --prefix = "●",
    prefix = function(diagnostic)
      local type = diagnostic.severity
      if type == vim.diagnostic.severity.ERROR then
        return "✘"
      elseif type == vim.diagnostic.severity.WARN then
        return "󰀪"
      elseif type == vim.diagnostic.severity.INFO then
        return "ⁱ"
      elseif type == vim.diagnostic.severity.HINT then
        return ""
      end
    end,
  },
  severity_sort = true,
  signs = {
    Error = { text = "✘", texthl = "DiagnosticSignError" },
    Warn = { text = "󰀪", texthl = "DiagnosticSignWarn" },
    Info = { text = "ⁱ", texthl = "DiagnosticSignInfo" },
    Hint = { text = "", texthl = "DiagnosticSignHint" },
  },
}

for type, sign in pairs(diagnostics.signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = sign.text, texthl = hl })
end

vim.diagnostic.config(diagnostics)
