{pkgs, ...}: {
  imports = [
    ../2_nvim-web-devicons
  ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    oil-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_oil.lua".source = ./config.lua;
  };
}
