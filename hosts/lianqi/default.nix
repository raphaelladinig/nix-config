{ inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.home-manager
    inputs.disko.nixosModules.disko
    ./disko.nix
    inputs.impermanence.nixosModules.impermanence
    ../common/impermanence.nix
    inputs.sops-nix.nixosModules.sops
    ../common/users/raphael
    ../common/users/root
    (import ../common/system-config.nix {
      timezone = "Europe/Vienna";
    })
    ../common/sops.nix
    ../common/network.nix
    ../common/audio.nix
    ../common/printing.nix
    ../common/ly.nix
    ../common/grub.nix
  ];

  networking.hostName = "lianqi";

  system.stateVersion = "25.05";
}
