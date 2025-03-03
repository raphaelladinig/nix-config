vim.g.markdown_recommended_style = 0

require("conform").setup({
  formatters_by_ft = {
    markdown = { "prettier" },
  },
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = "markdown",
  callback = function()
    vim.wo.wrap = true
    vim.wo.linebreak = true
  end,
})
