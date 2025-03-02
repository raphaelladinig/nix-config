{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    telescope-nvim
    telescope-fzf-native-nvim
    plenary-nvim
    nvim-web-devicons
  ];

  home.file = {
    ".config/nvim/lua/plugins/telescope.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    ripgrep
    fd
  ];
}
