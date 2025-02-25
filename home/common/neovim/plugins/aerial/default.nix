{ pkgs, ... }:
{
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      {
        plugin = aerial-nvim;
        type = "lua";
        config = builtins.readFile ./config.lua;
      }
    ];
  };
}
