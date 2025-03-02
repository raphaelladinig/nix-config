{ pkgs, ... }:
{
  imports = [
    ../../plugins/nvim-lspconfig
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/typst.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    typst
    tinymist
    typstyle
  ];
}
