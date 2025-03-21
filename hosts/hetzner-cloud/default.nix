{inputs, ...}: {
  imports = [
    ../vm
    inputs.sops-nix.nixosModules.sops
    (import ../common/sops.nix {keyFile = "/var/lib/sops-nix/keys.txt";})
    ./syncthing.nix
  ];

  networking.hostName = "hetzner-cloud";
}
