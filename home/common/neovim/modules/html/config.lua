local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      html = { "prettier" },
    },
  })

  require("lspconfig").html.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  })
end

return M
