require("nvim-tree").setup({
  renderer = {
    indent_markers = {
      enable = true,
    },
  },
})

vim.keymap.set("n", "<leader>o", "<CMD>NvimTreeToggle<CR>")
