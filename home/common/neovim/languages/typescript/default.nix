{ pkgs, ... }:
{
  imports = [
    ../../plugins/nvim-lspconfig
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/typescript.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    nodePackages.typescript-language-server
    nodePackages.prettier
    bun
  ];
}
