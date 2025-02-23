local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      svelte = { "prettier" },
    },
  })

  require("lspconfig").svelte.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  })
end

return M
