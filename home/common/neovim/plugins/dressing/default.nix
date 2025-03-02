{ pkgs, ... }:
{
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      dressing-nvim
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/dressing.lua".source = ./config.lua;
  };
}
