{pkgs, ...}: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    fzf-lua
    nvim-web-devicons
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
