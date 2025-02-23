{pkgs, ...}: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    oil-nvim
    nvim-web-devicons
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_oil.lua".source = ./config.lua;
  };
}
