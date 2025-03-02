{ pkgs, ... }:
{
  imports = [
    ../luasnip
    ../nvim-dap
  ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-autopairs
    nvim-cmp
    cmp_luasnip
    cmp-nvim-lsp
    cmp-path
    cmp-buffer
    cmp-cmdline
    cmp-dap
    lspkind-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/nvim-cmp.lua".source = ./config.lua;
  };
}
