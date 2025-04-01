{pkgs, ...}: {
  imports = [
    ../2_nvim-web-devicons
  ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    lualine-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_lualine.lua".source = ./config.lua;
  };
}
