{ pkgs, ... }:
{
  imports = [
    ../../plugins/nvim-lspconfig
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/html.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    vscode-langservers-extracted
    nodePackages.prettier
  ];
}
