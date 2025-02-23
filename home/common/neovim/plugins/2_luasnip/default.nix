{pkgs, ...}: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    luasnip
    friendly-snippets
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_luasnip.lua".source = ./config.lua;
  };
}
