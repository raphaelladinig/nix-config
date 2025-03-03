{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    overseer-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_overseer.lua".source = ./config.lua;
  };
}
