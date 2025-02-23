{pkgs, ...}: {
  imports = [
    ../1_nvim-treesitter
    ../2_dressing
    ../2_fzf-lua
    ../2_copilot
    ../2_render-markdown
    ../2_img-clip
  ];

  programs.neovim = {
    plugins = with pkgs.vimPlugins; [
      avante-nvim
      plenary-nvim
      nui-nvim
      nvim-web-devicons
    ];
  };

  home.file = {
    ".config/nvim/lua/plugins/3_avante.lua".source = ./config.lua;
  };
}
