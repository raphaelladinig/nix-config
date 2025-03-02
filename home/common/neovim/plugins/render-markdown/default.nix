{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    render-markdown-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/render-markdown-nvim.lua".source = ./config.lua;
  };
}
