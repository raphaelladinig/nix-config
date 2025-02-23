{
  config,
  lib,
  ...
}: {
  boot.loader.grub = {
    enable = true;
    device = "nodev";
    efiSupport = true;
    splashImage = null;
    efiInstallAsRemovable = true;
    useOSProber =
      lib.mkIf config.hostSpec.useOSProber
      true;
  };
}
