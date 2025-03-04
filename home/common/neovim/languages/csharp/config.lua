require("conform").setup({
  formatters_by_ft = {
    cs = { "csharpier" },
  },
})

require("lspconfig").csharp_ls.setup({
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})
