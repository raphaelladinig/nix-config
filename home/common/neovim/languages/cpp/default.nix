{ pkgs, ... }:
{
  imports = [
    ../../plugins/nvim-lspconfig
    ../../plugins/conform
    ../../plugins/nvim-dap
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
