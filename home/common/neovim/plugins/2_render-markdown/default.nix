{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    render-markdown-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_render-markdown-nvim.lua".source = ./config.lua;
  };
}
