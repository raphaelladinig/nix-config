{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-autopairs
  ];

  home.file = {
    ".config/nvim/lua/plugins/nvim-autopairs.lua".source = ./config.lua;
  };
}
