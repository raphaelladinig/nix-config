require("conform").setup({
  formatters_by_ft = {
    nix = { "nixfmt" },
  },
})

require("lspconfig").nil_ls.setup({
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})
