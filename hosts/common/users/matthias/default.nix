{
  pkgs,
  config,
  inputs,
  ...
}: let
  secretsPath = "${builtins.toString inputs.nix-secrets}/secrets/age_raphael";
in {
  # sops.secrets.password_raphael = {
  #   neededForUsers = true;
  #   sopsFile = "${secretsPath}/password_raphael";
  # };

  users.users.matthias = {
    isNormalUser = true;
    initialPassword = "matthias";
    # hashedPasswordFile = config.sops.secrets.password_raphael.path;
    extraGroups = [
      "video"
      "audio"
      "input"
      "networkmanager"
    ];
  };

  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = false;
      gamescopeSession.enable = true;
      extraCompatPackages = [pkgs.proton-ge-bin];
    };

    gamescope = {
      enable = true;
      capSysNice = true;
      args = [
        "--rt"
        "--expose-wayland"
      ];
    };
  };

  services.xserver = {
    enable = true;
    desktopManager.gnome.enable = true;
  };

  environment.persistence."/persist" = {
    users.matthias = {
      directories = [
        "Desktop"
        "Documents"
        "Downloads"
        "Music"
        "Pictures"
        "Public"
        "Templates"
        "Videos"
        ".local/share/Steam"
      ];
    };
  };
}
