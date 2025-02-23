{pkgs, ...}: {
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      dressing-nvim
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/2_dressing.lua".source = ./config.lua;
  };
}
