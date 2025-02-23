{
  pkgs,
  hostName,
  ...
}: {
  home.file = {
    ".config/waybar".source = ./${hostName};
  };

  home.packages = with pkgs; [
    waybar
    nerd-fonts.caskaydia-cove
  ];
}
