local M = {}

function M.setup()
  vim.api.nvim_create_user_command("SpellEnglish", function()
    vim.opt_local.spell = true
    vim.bo.spelllang = "en"
  end, {})

  vim.api.nvim_create_user_command("SpellGerman", function()
    vim.opt_local.spell = true
    vim.bo.spelllang = "de"
  end, {})
end

return M
