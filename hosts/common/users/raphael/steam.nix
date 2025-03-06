{
  imports = [../../steam.nix];

  environment.persistence."/persist" = {
    users.raphael = {
      directories = [
        ".steam"
        ".local/share/Steam"
      ];
    };
  };
}
