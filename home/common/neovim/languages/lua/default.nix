{ pkgs, ... }:
{
  imports = [
    ../../plugins/1_nvim-lspconfig
    ../../plugins/1_conform
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
