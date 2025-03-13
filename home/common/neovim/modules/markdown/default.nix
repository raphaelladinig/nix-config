{pkgs, ...}: {
  imports = [
    ../../plugins/1_conform
    ../../plugins/1_nvim-lspconfig
  ];

  home.file = {
    ".config/nvim/lua/modules/markdown.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    nodePackages.prettier
  ];
}
