{ pkgs, ... }:
{
  imports = [
    ../../plugins/1_nvim-lspconfig
    ../../plugins/1_conform
  ];

  home.file = {
    ".config/nvim/lua/languages/nix.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    nixfmt-rfc-style
    nil
  ];
}
