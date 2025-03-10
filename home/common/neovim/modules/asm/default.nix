{pkgs, ...}: {
  imports = [
    ../../plugins/1_conform
  ];

  home.file = {
    ".config/nvim/lua/modules/asm.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    asmfmt
    nasm
  ];
}
