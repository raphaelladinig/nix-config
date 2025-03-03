{ pkgs, ... }:
{
  imports = [
    ../../plugins/1_nvim-lspconfig
    ../../plugins/1_conform
    ../../plugins/1_nvim-dap
  ];

  home.file = {
    ".config/nvim/lua/languages/cpp.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    clang-tools
    clang
    lldb
  ];
}
