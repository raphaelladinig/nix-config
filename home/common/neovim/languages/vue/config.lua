require("conform").setup({
  formatters_by_ft = {
    vue = { "prettier" },
  },
})

local lspconfig = require("lspconfig")

lspconfig.volar.setup({
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})
