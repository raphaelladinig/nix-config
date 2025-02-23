require("conform").setup({
  formatters_by_ft = {
    css = { "prettier" },
  },
})

require("lspconfig").cssls.setup({
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})
