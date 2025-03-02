{ pkgs, ... }:
{
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      fidget-nvim
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/fidget.lua".source = ./config.lua;
  };
}
