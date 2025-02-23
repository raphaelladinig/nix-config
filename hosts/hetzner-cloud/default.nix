{inputs, ...}: {
  imports = [
    ../vm
    inputs.sops-nix.nixosModules.sops
    (import ../common/sops.nix {keyFile = "/var/lib/sops-nix/age_hetzner-cloud";})
    ./syncthing.nix
  ];

  networking.hostName = "hetzner-cloud";
}
