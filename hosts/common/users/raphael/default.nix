{
  pkgs,
  config,
  inputs,
  ...
}:
let
  secretsPath = "${builtins.toString inputs.nix-secrets}/secrets";
in
{
  imports = [
    ../../home-manager.nix
    ../../yubikey.nix
    ../../sudo.nix
    ../../hyprland.nix
    ../../ssh
    ./school.nix
  ];

  sops.secrets.password_raphael = {
    neededForUsers = true;
    sopsFile = "${secretsPath}/password_raphael";
  };

  users.users.raphael = {
    isNormalUser = true;
    initialPassword = "raphael";
    hashedPasswordFile = config.sops.secrets.password_raphael.path;
    extraGroups = [
      "wheel"
      "video"
      "audio"
      "input"
      "networkmanager"
    ];

    openssh.authorizedKeys.keyFiles = [
      ../../ssh/id_raphael.pub
    ];

    shell = pkgs.zsh;
  };

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

  home-manager.users.raphael = import ../../../../home/raphael;

  environment.persistence."/persist" = {
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
        "notes"
        "dev"
        ".ssh"
        ".config/github-copilot"
        ".config/google-chrome"
        ".config/sops"
        ".local/share/zoxide"
        ".local/share/DaVinciResolve"
        ".local/state/lazygit"
        ".local/share/direnv"
        ".local/state/wireplumber"
      ];
      files = [
        ".zsh_history"
      ];
    };
  };
}
