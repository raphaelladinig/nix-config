let
  nvim-spell-de-utf8-dictionary = builtins.fetchurl {
    url = "https://ftp.nluug.nl/pub/vim/runtime/spell/de.utf-8.spl";
    sha256 = "1ld3hgv1kpdrl4fjc1wwxgk4v74k8lmbkpi1x7dnr19rldz11ivk";
  };

  nvim-spell-de-utf8-suggestions = builtins.fetchurl {
    url = "https://ftp.nluug.nl/pub/vim/runtime/spell/de.utf-8.sug";
    sha256 = "0j592ibsias7prm1r3dsz7la04ss5bmsba6l1kv9xn3353wyrl0k";
  };
in {
  imports = [
    ../modules/lua
    ../modules/markdown
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
    ../plugins/2_fzf-lua
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
    ".config/nvim/lua/2_default_modules.lua".source = ./2_default_modules.lua;
    ".config/nvim/spell/de.utf-8.spl".source = nvim-spell-de-utf8-dictionary;
    ".config/nvim/spell/de.utf-8.sug".source = nvim-spell-de-utf8-suggestions;
  };
}
