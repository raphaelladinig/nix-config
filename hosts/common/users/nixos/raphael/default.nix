{
  pkgs,
  config,
  ...
} @ args: let
  username = "raphael";
in {
  imports = [
    (import ../../../templates/users/nixos/main.nix (args // {inherit username;}))
    ./school.nix
    ../../../yubikey.nix
    ../../../sudo.nix
    ../../../hyprland.nix
    ../../../ssh
  ];

  userSpec.raphael = {
    inherit username;
    extraGroups = [
      "wheel"
      "video"
      "audio"
      "input"
      "networkmanager"
      "docker"
    ];
    school = false;
    yubikey = config.hostSpec.yubikey;
    name = "Raphael Ladinig";
    email = "ra.ladinig@gmail.com";
  };

  users.users.${username} = {
    openssh.authorizedKeys.keyFiles = [
      ../../../ssh/id_raphael.pub
    ];

    shell = pkgs.zsh;
  };

  virtualisation.docker.enable = true;

  programs.zsh.enable = true;

  security.pam = {
    u2f = {
      enable = true;
      settings = {
        authfile = "/home/raphael/.config/Yubico/u2f_keys";
      };
    };
    services = {
      login.u2fAuth = true;
      sudo.u2fAuth = true;
    };
  };

  virtualisation.libvirtd.enable = true;

  environment.persistence."/persist" = {
    directories = [
      "/var/lib/bluetooth"
      "/var/lib/mysql"
    ];
    users.raphael = {
      directories = [
        "Desktop"
        "Documents"
        "Downloads"
        "Music"
        "Pictures"
        "Public"
        "Templates"
        "Videos"
        "Notes"
        "Dev"
        "Virtual"
        "Sync"
        ".ssh"
        ".zen"
        ".local/share/zoxide"
        ".local/share/DaVinciResolve"
        ".local/share/direnv"
        ".local/share/nvim"
        ".local/state/wireplumber"
        ".local/state/lazygit"
        ".local/state/nvim"
        ".local/state/syncthing"
      ];
      files = [
        ".zsh_history"
      ];
    };
  };
}
