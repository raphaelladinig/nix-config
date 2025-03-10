local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      lua = { "stylua" },
    },
  })

  require("lspconfig").lua_ls.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  })
end

return M
