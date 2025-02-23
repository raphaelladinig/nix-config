local function load_files(path)
  if vim.fn.isdirectory(path) == 1 then
    local files = vim.fn.readdir(path)

    for _, file in ipairs(files) do
      if file:match("%.lua$") then
        dofile(path .. "/" .. file)
      end
    end
  end
end

local function load_local_config(path)
  local cwd_nvim_init = vim.fn.getcwd() .. path
  if vim.fn.filereadable(cwd_nvim_init) == 1 then
    local file_content = vim.secure.read(cwd_nvim_init)
    if file_content then
      load(file_content)()
    end
  end
end

load_files(vim.fn.stdpath("config") .. "/lua")
load_files(vim.fn.stdpath("config") .. "/lua/plugins")

load_local_config("/.nvim.lua")
load_local_config("/.nvim/init.lua")
