{ pkgs, ... }:
{
  imports = [ ../1_nvim-dap ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-dap-ui
    nvim-nio
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_nvim-dap-ui.lua".source = ./config.lua;
  };
}
