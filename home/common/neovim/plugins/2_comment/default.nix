{pkgs, ...}: {
  imports = [../1_nvim-treesitter];

  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      comment-nvim
      nvim-ts-context-commentstring
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/2_comment.lua".source = ./config.lua;
  };
}
