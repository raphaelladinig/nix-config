{ pkgs, ... }:

{
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      img-clip-nvim
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/2_img-clip.lua".source = ./config.lua;
  };
}
