{pkgs, ...}: {
  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-treesitter.withAllGrammars
    nvim-treesitter-context
    nvim-ts-autotag
  ];

  home.file = {
    ".config/nvim/lua/plugins/1_nvim-treesitter.lua".source = ./config.lua;
  };

  home.packages = with pkgs; [tree-sitter];
}
