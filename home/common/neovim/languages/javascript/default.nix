{pkgs, ...}: {
  imports = [
    ../../plugins/1_nvim-lspconfig
    ../../plugins/1_conform
    ../../plugins/1_blink-cmp
  ];

  home.file = {
    ".config/nvim/lua/languages/javascript.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    nodePackages.typescript-language-server
    nodePackages.prettier
  ];
}
