{ pkgs, ... }:
{
  imports = [ ../nvim-cmp ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-lspconfig
    cmp-nvim-lsp
  ];

  home.file = {
    ".config/nvim/lua/plugins/nvim-lspconfig.lua".source = ./config.lua;
  };
}
