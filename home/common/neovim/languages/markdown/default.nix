{ pkgs, ... }:
{
  imports = [
    ../../plugins/1_conform
  ];

  home.file = {
    ".config/nvim/lua/languages/markdown.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    nodePackages.prettier
  ];
}
