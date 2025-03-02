{ pkgs, ... }:
{
  imports = [
    ../../plugins/nvim-lspconfig
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/lua.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    stylua
    lua-language-server
    lua
  ];
}
