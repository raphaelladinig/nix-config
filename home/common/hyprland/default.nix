{
  pkgs,
  hostSpec,
  ...
}: {
  home.file = {
    ".config/hypr/hyprland.conf".source = ./hypr/hyprland.conf;
    ".config/hypr/vars.conf".source = ./hypr/vars.conf;
    ".config/hypr/binds.conf".source = ./hypr/binds.conf;
    ".config/hypr/hyprlock.conf".source = ./hypr/hyprlock.conf;
    ".config/hypr/host-specific.conf".source = ./hypr/${hostSpec.hostName}.conf;
  };

  home.packages = with pkgs; [
    bibata-cursors
    slurp
    grim
    brightnessctl
    cliphist
    wl-clipboard
    hyprlock
    hyprpicker
    hyprsunset
  ];

  imports = [
    ../waybar
    ../mako
    ../swappy
    ../kitty
    ../mpv
    ../zsh
    ../gtk.nix
    ../zen-browser
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
