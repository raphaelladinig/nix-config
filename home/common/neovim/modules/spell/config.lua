local M = {}

function M.setup()
  vim.api.nvim_create_user_command("German", function()
    require("lspconfig").ltex_plus.setup({
      settings = {
        filetypes = { "markdown", "typst" },
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
        filetypes = { "markdown", "typst" },
        ltex = {
          language = "en",
        },
      },
    })

    vim.bo.spelllang = "en"
  end, {})

  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "markdown", "typst" },
    callback = function()
      require("lspconfig").ltex_plus.setup({
        settings = {
          filetypes = { "markdown", "typst" },
          ltex = {
            language = "en",
          },
        },
      })

      vim.opt_local.spell = true
      vim.bo.spelllang = "en"
    end,
  })
end

return M
