{ pkgs, ... }:
{
  imports = [
    ../../plugins/nvim-lspconfig
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/csharp.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    csharp-ls
    csharpier
  ];
}
