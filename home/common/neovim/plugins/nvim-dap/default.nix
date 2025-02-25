{ pkgs, ... }:
{
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      {
        plugin = nvim-dap;
        type = "lua";
        config = builtins.readFile ./config.lua;
      }
    ];
  };
}
