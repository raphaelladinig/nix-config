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

local function write_config_template(path)
  local template = [[
local function load_languages(languages)
  for _, lang in ipairs(languages) do
    dofile(vim.fn.stdpath("config") .. "/lua/languages/" .. lang .. ".lua")
  end
end



print("successfully loaded ]] .. path .. [[")
]]

  local file_path = vim.fn.expand(path)
  local dir = file_path:match("(.*/)")
  if dir then
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, "p")
    end
  end

  local file = io.open(file_path, "w")

  if file then
    file:write(template)
    file:close()
    print("Config written to " .. file_path)
  else
    print("Error creating file")
  end
end

vim.api.nvim_create_user_command("WriteConfigTemplate", function()
  write_config_template(".nvim.lua")
end, {})
vim.api.nvim_create_user_command("WriteConfigTemplateDir", function()
  write_config_template(".nvim/init.lua")
end, {})
