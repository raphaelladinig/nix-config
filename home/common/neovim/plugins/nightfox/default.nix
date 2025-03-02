{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    nightfox-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/nightfox.lua".source = ./config.lua;
  };
}
