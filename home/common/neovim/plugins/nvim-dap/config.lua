local dap = require("dap")

vim.keymap.set("n", "<leader>dc", function()
  dap.continue()
end)
vim.keymap.set("n", "<leader>do", function()
  dap.step_over()
end)
vim.keymap.set("n", "<leader>di", function()
  dap.step_into()
end)
vim.keymap.set("n", "<leader>dI", function()
  dap.step_into()
end)
vim.keymap.set("n", "<leader>db", function()
  dap.toggle_breakpoint()
end)

require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
  sources = {
    { name = "dap" },
  },
})
