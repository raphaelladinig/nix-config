local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      sh = { "beautysh" },
      bash = { "beautysh" },
    },
  })

  require("lspconfig").bashls.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  })
end

return M
