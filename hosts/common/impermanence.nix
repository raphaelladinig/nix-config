{
  config,
  inputs,
  ...
}: let
  dirs = builtins.concatStringsSep "\n" (builtins.map (i: i.dirPath) config.environment.persistence."/persist".directories);
  files = builtins.concatStringsSep "\n" (builtins.map (i: i.filePath) config.environment.persistence."/persist".files);
in {
  imports = [
    inputs.impermanence.nixosModules.impermanence
  ];

  boot.initrd.systemd = {
    enable = true;

    services.rollback = {
      wantedBy = ["initrd.target"];
      after = ["initrd-root-device.target"];
      before = ["sysroot.mount"];
      serviceConfig.Type = "oneshot";
      script = ''
        mkdir /btrfs_tmp
        mount /dev/root_vg/root /btrfs_tmp
        if [[ -e /btrfs_tmp/root ]]; then
            mkdir -p /btrfs_tmp/old_roots
            timestamp=$(date --date="@$(stat -c %Y /btrfs_tmp/root)" "+%Y-%m-%d_%H:%M:%S")
            mv /btrfs_tmp/root "/btrfs_tmp/old_roots/$timestamp"
        fi

        delete_subvolume_recursively() {
            IFS=$'\n'
            for i in $(btrfs subvolume list -o "$1" | cut -f 9- -d ' '); do
                delete_subvolume_recursively "/btrfs_tmp/$i"
            done
            btrfs subvolume delete "$1"
        }

        for i in $(find /btrfs_tmp/old_roots/ -maxdepth 1 -mtime +1); do
            delete_subvolume_recursively "$i"
        done

        btrfs subvolume create /btrfs_tmp/root
        umount /btrfs_tmp
      '';
    };
  };

  fileSystems."/persist".neededForBoot = true;

  environment.persistence."/persist" = {
    directories = [
      "/var/lib/nixos"
      "/var/lib/systemd"
      "/var/log"
      "/var/lib/agenix"
    ];
  };

  environment.variables = {
    PERSIST_DIRS = dirs;
    PERSIST_FILES = files;
  };
}
