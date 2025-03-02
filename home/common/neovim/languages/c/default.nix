{ pkgs, ... }:
{
  imports = [
    ../../plugins/nvim-lspconfig
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/c.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    clang-tools
    clang
  ];
}
