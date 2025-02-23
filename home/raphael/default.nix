{
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    inputs.sops-nix.homeManagerModules.sops
    ../common/xdg-user-dirs.nix
    ../common/nixpkgs
    ../common/virtualisation.nix
    ../common/hyprland
    ../common/yubikey.nix
    ./sops.nix
    ./git.nix
    ./school.nix
    ./ssh.nix
  ];

  home = {
    username = "raphael";
    homeDirectory = "/home/raphael";
    stateVersion = "25.05";
  };

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    fastfetch
    tokei
    tree
    htop
    gnumake
    cryptsetup
    just
    pandoc
    pavucontrol
    blueman
    davinci-resolve
    nodejs
    bun
    glow
    unzip
    zip
    home-manager
    pnpm
    sqlite
    sops
  ];
}
