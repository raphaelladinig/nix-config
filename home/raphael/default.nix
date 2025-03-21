{
  pkgs,
  inputs,
  ...
}: let
  inherit (import ../../vars.nix) stateVersion;
in {
  imports = [
    inputs.sops-nix.homeManagerModules.sops
    ../common/xdg-user-dirs.nix
    ../common/nixpkgs
    ../common/virtualisation.nix
    ../common/hyprland
    ../common/yubikey.nix
    (import ./common/sops.nix {})
    ./common/git.nix
    ./common/school.nix
    ./common/ssh.nix
    ./common/syncthing.nix
  ];

  home = {
    username = "raphael";
    homeDirectory = "/home/raphael";
    stateVersion = stateVersion;
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
