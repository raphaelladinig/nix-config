{ pkgs, ... }:
{
  imports = [
    ../../plugins/nvim-lspconfig
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/python.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    pyright
    black
    python3
  ];
}
