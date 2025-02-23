{pkgs, ...}: {
  services.udev.packages = with pkgs; [
    platformio-core.udev
  ];

  services.mysql = {
    enable = true;
    package = pkgs.mariadb;
  };

  environment.systemPackages = with pkgs; [
    platformio
  ];

  environment.persistence."/persist" = {
    users.raphael = {
      directories = [
        "Android"
        ".android"
        ".java"
        ".jdks"
        ".gradle"
        ".platformio"
        ".dotnet"
        ".nuget"
        ".config/Google"
      ];
    };
  };
}
