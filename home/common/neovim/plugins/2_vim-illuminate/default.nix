{ pkgs, ... }:
{
  imports = [ ../1_nvim-treesitter ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    vim-illuminate
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_vim-illuminate.lua".source = ./config.lua;
  };
}
