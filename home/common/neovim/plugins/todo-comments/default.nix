{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    todo-comments-nvim
    plenary-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/todo-comments.lua".source = ./config.lua;
  };
}
