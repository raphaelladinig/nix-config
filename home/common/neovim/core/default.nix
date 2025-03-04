{
  imports = [
    ../languages/lua
    ../plugins/0_nightfox
    ../plugins/1_conform
    ../plugins/1_nvim-lint
    ../plugins/1_nvim-dap
    ../plugins/1_nvim-lspconfig
    ../plugins/1_blink-cmp
    ../plugins/1_nvim-treesitter
    ../plugins/2_dressing
    ../plugins/2_render-markdown
    ../plugins/2_oil
    ../plugins/2_lualine
    ../plugins/2_telescope
    ../plugins/2_overseer
    ../plugins/2_aerial
    ../plugins/2_comment
    ../plugins/2_nvim-dap-ui
    ../plugins/2_nvim-dap-virtual-text
    ../plugins/2_nvim-surround
    ../plugins/2_indent-blankline
    ../plugins/2_vim-illuminate
    ../plugins/2_nvim-autopairs
  ];

  home.file = {
    ".config/nvim/lua/0_settings.lua".source = ./0_settings.lua;
    ".config/nvim/lua/1_keymaps.lua".source = ./1_keymaps.lua;
    ".config/nvim/lua/1_misc.lua".source = ./1_misc.lua;
    ".config/nvim/lua/2_languages.lua".source = ./2_languages.lua;
  };
}
