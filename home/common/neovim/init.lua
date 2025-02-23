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
  local fullpath = vim.fn.getcwd() .. "/" .. path
  if vim.fn.filereadable(fullpath) == 1 then
    local file_content = vim.secure.read(fullpath)
    load(file_content)()
    print("loaded " .. path)
  end
end

package.path = package.path .. ";" .. vim.fn.stdpath("config") .. "/lua/modules/?.lua"

load_files(vim.fn.stdpath("config") .. "/lua")
load_files(vim.fn.stdpath("config") .. "/lua/plugins")

load_local_config(".nvim.lua")
load_local_config(".nvim/init.lua")

-- BUG printing is bugged
print("")
