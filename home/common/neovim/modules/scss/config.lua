local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      scss = { "prettier" },
    },
  })

  require("lspconfig").cssls.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  })
end

return M
