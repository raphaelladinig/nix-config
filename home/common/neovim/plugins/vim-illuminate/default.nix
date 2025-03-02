{ pkgs, ... }:
{
  imports = [ ../nvim-treesitter ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    vim-illuminate
  ];

  home.file = {
    ".config/nvim/lua/plugins/vim-illuminate.lua".source = ./config.lua;
  };
}
