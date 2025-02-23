local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      asm = { "asmfmt" },
    },
  })
end

return M
