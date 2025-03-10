local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      c = { "clang-format" },
    },
  })

  require("lspconfig").clangd.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
    cmd = {
      "clangd",
      "--offset-encoding=utf-16",
    },
  })
end

return M
