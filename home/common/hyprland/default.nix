{
  pkgs,
  hostName,
  ...
}: {
  home.file = {
    ".config/hypr/hyprland.conf".source = ./hypr/hyprland.conf;
    ".config/hypr/vars.conf".source = ./hypr/vars.conf;
    ".config/hypr/binds.conf".source = ./hypr/binds.conf;
    ".config/hypr/scripts".source = ./hypr/scripts;
    ".config/hypr/hyprlock.conf".source = ./hypr/hyprlock.conf;
    ".config/hypr/host-specific.conf".source = ./hypr/${hostName}.conf;
  };

  home.packages = with pkgs; [
    bibata-cursors
    slurp
    grim
    brightnessctl
    cliphist
    wl-clipboard
    hyprlock
    google-chrome
    hyprpicker
    hyprsunset
  ];

  imports = [
    ../waybar
    ../mako
    ../swappy
    ../kitty
    ../zathura
    ../mpv
    ../zsh
    ../gtk.nix
  ];

  xdg = {
    mimeApps = {
      enable = true;
      defaultApplications = {
        "application/pdf" = ["org.pwmt.zathura.desktop"];
      };
    };
  };
}
