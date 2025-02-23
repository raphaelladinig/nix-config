{
  pkgs,
  hostSpec,
  ...
}: {
  home.file = {
    ".config/waybar".source = ./${hostSpec.hostName};
  };

  home.packages = with pkgs; [
    waybar
    nerd-fonts.caskaydia-cove
  ];
}
