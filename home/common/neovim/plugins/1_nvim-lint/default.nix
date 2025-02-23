{pkgs, ...}: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-lint
  ];

  home.file = {
    ".config/nvim/lua/plugins/1_nvim-lint.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [vale];
}
