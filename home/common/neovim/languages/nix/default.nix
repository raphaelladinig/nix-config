{ pkgs, ... }:
{
  imports = [
    ../../plugins/nvim-lspconfig
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/nix.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    nixfmt-rfc-style
    nil
  ];
}
