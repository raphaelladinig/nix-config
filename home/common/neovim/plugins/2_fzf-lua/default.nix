{pkgs, ...}: {
  imports = [
    ../2_nvim-web-devicons
  ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    fzf-lua
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_fzf-lua.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    fzf
    fd
    ripgrep
  ];
}
