require("avante").setup({
  provider = "copilot",
  hints = { enabled = false },
})

require("render-markdown").setup({
  ft = { "markdown", "Avante" },
})
