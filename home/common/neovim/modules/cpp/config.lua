local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      cpp = { "clang-format" },
    },
  })

  require("lspconfig").clangd.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
    cmd = {
      "clangd",
      "--offset-encoding=utf-16",
    },
  })

  local dap = require("dap")

  dap.adapters.lldb = {
    type = "executable",
    command = "lldb-dap",
    name = "lldb",
  }

  dap.configurations.cpp = {
    {
      name = "default",
      type = "lldb",
      request = "launch",
      program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
      args = {},
    },
  }
end

return M
