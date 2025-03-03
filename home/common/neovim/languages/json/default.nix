{ pkgs, ... }:
{
  imports = [
    ../../plugins/1_nvim-lspconfig
    ../../plugins/1_conform
  ];

  home.file = {
    ".config/nvim/lua/languages/json.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    vscode-langservers-extracted
    nodePackages.prettier
  ];
}
