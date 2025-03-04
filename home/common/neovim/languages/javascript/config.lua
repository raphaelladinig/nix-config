require("conform").setup({
  formatters_by_ft = {
    javascript = { "prettier" },
  },
})

require("lspconfig").ts_ls.setup({
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})
