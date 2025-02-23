{pkgs, ...}: {
  imports = [
    ../1_nvim-dap
    ../1_nvim-treesitter
  ];

  programs.neovim.plugins = with pkgs.vimPlugins; [
    nvim-dap-virtual-text
  ];

  home.file = {
    ".config/nvim/lua/plugins/2_nvim-dap-virtual-text.lua".source = ./config.lua;
  };
}
