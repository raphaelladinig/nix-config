{
  boot.loader.grub = {
    enable = true;
    device = "nodev";
    useOSProber = true;
    efiSupport = true;
    splashImage = null;
    efiInstallAsRemovable = true;
  };
}
