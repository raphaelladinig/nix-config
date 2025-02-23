{pkgs, ...}: {
  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      copilot-lua
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/2_copilot.lua".source = ./config.lua;
  };
}
