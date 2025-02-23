local M = {}

function M.setup()
  require("lspconfig").tailwindcss.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  })
end

return M
