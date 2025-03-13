local M = {}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      typst = { "typstyle" },
    },
  })

  require("lspconfig").tinymist.setup({
    capabilities = require("blink.cmp").get_lsp_capabilities(),
    root_dir = vim.fn.getcwd(),
  })

  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = "typst",
    callback = function()
      vim.wo.wrap = true
      vim.wo.linebreak = true

      vim.keymap.set("n", "<leader>ty", function()
        local file_path = vim.fn.expand("%:p")
        local pdf_path = vim.fn.expand("%:p:r") .. ".pdf"

        vim.cmd("!typst compile " .. file_path .. " && zathura " .. pdf_path .. " &")

        vim.fn.jobstart("typst watch " .. file_path .. " " .. pdf_path)
      end, { noremap = true, silent = true, buffer = true })
    end,
  })
end

return M
