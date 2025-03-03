{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-autopairs
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_nvim-autopairs.lua".source = ./config.lua;
  };
}
