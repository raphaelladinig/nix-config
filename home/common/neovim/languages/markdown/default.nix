{ pkgs, ... }:
{
  imports = [
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/markdown.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    nodePackages.prettier
  ];
}
