local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      json = { "prettier" },
      jsonc = { "prettier" },
    },
  })

  require("lspconfig").jsonls.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  })
end

return M
