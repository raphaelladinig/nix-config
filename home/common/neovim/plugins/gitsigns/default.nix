{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    gitsigns-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/gitsigns.lua".source = ./config.lua;
  };
}
