{pkgs, ...}: {
  imports = [
    ../2_luasnip
  ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    blink-cmp
    blink-cmp-avante
  ];

  home.file = {
    ".config/nvim/lua/plugins/1_blink-cmp.lua".source = ./config.lua;
  };
}
