{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-lspconfig
  ];

  home.file = {
    ".config/nvim/lua/plugins/1_nvim-lspconfig.lua".source = ./config.lua;
  };
}
