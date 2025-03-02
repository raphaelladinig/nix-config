local function load_files(path)
  local files = vim.fn.readdir(path)

  for _, file in ipairs(files) do
    if file:match("%.lua$") then
      dofile(path .. "/" .. file)
    end
  end
end

load_files(vim.fn.stdpath("config") .. "/lua/")
load_files(vim.fn.stdpath("config") .. "/lua/plugins/")
load_files(vim.fn.stdpath("config") .. "/lua/languages/")
