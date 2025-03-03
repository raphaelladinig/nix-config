{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    nightfox-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/1_nightfox.lua".source = ./config.lua;
  };
}
