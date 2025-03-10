{pkgs, ...}: {
  imports = [
    ../../plugins/1_nvim-lspconfig
    ../../plugins/1_conform
    ../../plugins/1_blink-cmp
  ];

  home.file = {
    ".config/nvim/lua/modules/svelte.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [
    svelte-language-server
    nodePackages.prettier
  ];
}
