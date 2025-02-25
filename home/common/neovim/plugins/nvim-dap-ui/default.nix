{ pkgs, ... }:
{
  imports = [ ../nvim-dap ];

  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      {
        plugin = nvim-dap-ui;
        type = "lua";
        config = builtins.readFile ./config.lua;
      }
      nvim-nio
    ];
  };
}
