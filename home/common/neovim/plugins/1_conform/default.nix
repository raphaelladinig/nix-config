{pkgs, ...}: {
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      conform-nvim
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/1_conform.lua".source = ./config.lua;
  };
}
