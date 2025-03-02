{ pkgs, ... }:
{
  imports = [
    ../../plugins/nvim-lspconfig
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/xml.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    lemminx
    xmlformat
  ];
}
