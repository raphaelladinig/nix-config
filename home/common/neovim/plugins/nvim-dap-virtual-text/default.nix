{ pkgs, ... }:
{
  imports = [
    ../nvim-dap
    ../nvim-treesitter
  ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-dap-virtual-text
  ];

  home.file = {
    ".config/nvim/lua/plugins/nvim-dap-virtual-text.lua".source = ./config.lua;
  };
}
