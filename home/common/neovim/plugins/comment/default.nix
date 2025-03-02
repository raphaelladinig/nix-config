{ pkgs, ... }:
{
  imports = [ ../nvim-treesitter ];

  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      comment-nvim
      nvim-ts-context-commentstring
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/comment.lua".source = ./config.lua;
  };
}
