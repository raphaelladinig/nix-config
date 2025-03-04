{ pkgs, ... }:
{
  imports = [
    ../../plugins/1_nvim-lspconfig
    ../../plugins/1_blink-cmp
  ];

  home.file = {
    ".config/nvim/lua/languages/tailwindcss.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    tailwindcss-language-server
  ];
}
