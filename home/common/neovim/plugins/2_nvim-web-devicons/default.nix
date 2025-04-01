{pkgs, ...}: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-web-devicons
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_nvim-web-devicons.lua".source = ./config.lua;
  };
}
