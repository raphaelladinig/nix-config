{ pkgs, ... }:
{
  imports = [
    ../../plugins/nvim-lspconfig
    ../../plugins/conform
  ];

  home.file = {
    ".config/nvim/lua/languages/svelte.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    svelte-language-server
    nodePackages.prettier
  ];
}
