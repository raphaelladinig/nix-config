vim.api.nvim_create_autocmd({ "BufEnter" }, {
  callback = function()
    vim.opt_local.cursorline = true
  end,
})
vim.api.nvim_create_autocmd({ "WinLeave" }, {
  callback = function()
    vim.opt_local.cursorline = false
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_user_command("SpellEnglish", function()
  vim.opt_local.spell = true
  vim.bo.spelllang = "en"
end, {})

vim.api.nvim_create_user_command("SpellGerman", function()
  vim.opt_local.spell = true
  vim.bo.spelllang = "de"
end, {})
