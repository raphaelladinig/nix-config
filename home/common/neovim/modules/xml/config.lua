local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      xml = { "xmlformat" },
    },
  })

  require("lspconfig").lemminx.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  })
end

return M
