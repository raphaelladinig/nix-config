{
  services.displayManager.ly.enable = true;

  environment.persistence."/persist" = {
    directories = [
      "/etc/ly"
    ];
  };
}
