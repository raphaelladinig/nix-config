{ pkgs, ... }:
{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-dap
  ];

  home.file = {
    ".config/nvim/lua/plugins/nvim-dap.lua".source = ./config.lua;
  };
}
