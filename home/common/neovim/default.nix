{
  imports = [
    ./core
    ./git.nix
    ./modules
    # ./ai.nix
  ];

  home.file = {
    ".config/nvim/init.lua".source = ./init.lua;
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };
}
