{ pkgs, ... }:
{
  imports = [ ../nvim-dap ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-dap-ui
    nvim-nio
  ];

  home.file = {
    ".config/nvim/lua/plugins/nvim-dap-ui.lua".source = ./config.lua;
  };
}
