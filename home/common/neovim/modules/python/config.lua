local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      python = { "black" },
    },
  })

  require("lspconfig").pyright.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  })
end

return M
