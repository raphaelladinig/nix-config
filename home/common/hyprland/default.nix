{ pkgs, hostName, ... }:
{
  home.file = {
    ".config/hypr/hyprland.conf" = {
      force = true;
      source = ./hypr/hyprland.conf;
    };
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
  ];

  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
    };
  };

  imports = [
    ../waybar
    ../mako
    ../swappy
    ../kitty
    ../zathura
    ../mpv
    ../zsh
  ];
}
