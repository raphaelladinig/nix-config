{pkgs, ...}: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    lualine-nvim
    nvim-web-devicons
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_lualine.lua".source = ./config.lua;
  };
}
