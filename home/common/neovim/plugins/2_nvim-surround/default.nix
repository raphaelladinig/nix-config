{pkgs, ...}: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-surround
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_nvim-surround.lua".source = ./config.lua;
  };
}
