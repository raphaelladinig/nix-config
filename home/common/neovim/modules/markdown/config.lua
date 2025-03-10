local M = {}

function M.setup()
  vim.g.markdown_recommended_style = 0

  require("conform").setup({
    formatters_by_ft = {
      markdown = { "prettier" },
    },
  })

  require("lspconfig").ltex_plus.setup({
    settings = {
      ltex = {
        language = "en",
      },
    },
  })

  vim.api.nvim_create_user_command("German", function()
    require("lspconfig").ltex_plus.setup({
      settings = {
        ltex = {
          language = "de",
        },
      },
    })

    vim.bo.spelllang = "de"
  end, {})

  vim.api.nvim_create_user_command("English", function()
    require("lspconfig").ltex_plus.setup({
      settings = {
        ltex = {
          language = "en",
        },
      },
    })

    vim.bo.spelllang = "en"
  end, {})

  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = "markdown",
    callback = function()
      vim.wo.wrap = true
      vim.wo.linebreak = true
      vim.opt_local.spell = true
      vim.bo.spelllang = "en"
    end,
  })
end

return M
