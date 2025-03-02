{
  imports = [
    ../plugins/dressing
    ../plugins/render-markdown
    ../plugins/fidget
    ../plugins/oil
    ../plugins/lualine
    ../plugins/telescope
    ../plugins/overseer
    ../plugins/aerial
    ../plugins/todo-comments
    ../plugins/comment
    ../plugins/conform
    ../plugins/nvim-lint
    ../plugins/nvim-dap
    ../plugins/nvim-dap-ui
    ../plugins/nvim-dap-virtual-text
    ../plugins/nvim-lspconfig
    ../plugins/nvim-cmp
    ../plugins/nvim-surround
    ../plugins/indent-blankline
    ../plugins/vim-illuminate
    ../plugins/nvim-autopairs
    ../plugins/nvim-treesitter
    ../plugins/nightfox
  ];

  home.file = {
    ".config/nvim/lua/settings.lua".source = ./settings.lua;
    ".config/nvim/lua/keymaps.lua".source = ./keymaps.lua;
    ".config/nvim/lua/misc.lua".source = ./misc.lua;
  };
}
