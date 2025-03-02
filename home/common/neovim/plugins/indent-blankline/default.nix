{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    indent-blankline-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/indent-blankline.lua".source = ./config.lua;
  };
}
