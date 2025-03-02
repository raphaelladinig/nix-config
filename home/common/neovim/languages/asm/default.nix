{ pkgs, ... }:
{
  imports = [
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/asm.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    asmfmt
    nasm
  ];
}
