{ pkgs, ... }:
{
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      aerial-nvim
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/aerial.lua".source = ./config.lua;
  };
}
