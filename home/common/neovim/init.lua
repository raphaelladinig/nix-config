vim.opt.exrc = true

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

package.path = package.path .. ";" .. vim.fn.stdpath("config") .. "/lua/modules/?.lua"

load_files(vim.fn.stdpath("config") .. "/lua")
load_files(vim.fn.stdpath("config") .. "/lua/plugins")
