{...} @ args: let
  username = "matthias";
in {
  imports = [
    (import ../../../templates/users/nixos/main.nix (args // {inherit username;}))
    ../../../steam.nix
  ];

  userSpec.matthias = {
    inherit username;
    homeManager = false;
    extraGroups = [
      "video"
      "audio"
      "input"
      "networkmanager"
    ];
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
