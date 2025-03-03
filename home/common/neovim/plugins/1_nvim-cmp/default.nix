{ pkgs, ... }:
{
  imports = [
    ../2_luasnip
    ../1_nvim-dap
    ../1_nvim-lspconfig
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
    cmp-nvim-lsp
    lspkind-nvim
  ];

  home.file = {
    ".config/nvim/lua/plugins/1_nvim-cmp.lua".source = ./config.lua;
  };
}
