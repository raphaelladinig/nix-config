{
  programs.git = {
    enable = true;
    userName = "Raphael Ladinig";
    userEmail = "ra.ladinig@gmail.com";
    extraConfig = {
      pull = {
        rebase = false;
      };
      gpg.format = "ssh";
      user.signingkey = "/home/raphael/.ssh/id_yubi.pub";
    };
  };
}
