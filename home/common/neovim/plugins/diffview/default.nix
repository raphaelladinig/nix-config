{ pkgs, ... }:

{
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      diffview-nvim
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/diffview.lua".source = ./config.lua;
  };
}
