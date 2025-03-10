local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      nix = { "alejandra" },
    },
  })

  require("lspconfig").nil_ls.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  })
end

return M
