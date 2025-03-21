{
  inputs,
  modulesPath,
  lib,
  ...
}: let
  inherit (import ../../vars.nix) stateVersion;
in {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    (modulesPath + "/profiles/qemu-guest.nix")
    inputs.disko.nixosModules.disko
    ./disko.nix
    inputs.sops-nix.nixosModules.sops
    (import ../common/system-config.nix {
      timezone = "Europe/Vienna";
    })
    ../common/grub.nix
    ../common/ssh
  ];

  networking.hostName = lib.mkDefault "vm";

  users.users.root.openssh.authorizedKeys.keys = [
    (builtins.readFile ../common/ssh/id_raphael.pub)
  ];

  system.stateVersion = stateVersion;
}
