{pkgs, ...}: {
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      aerial-nvim
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/2_aerial.lua".source = ./config.lua;
  };
}
