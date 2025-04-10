{
  programs.git = {
    enable = true;
    userName = "Raphael Ladinig";
    userEmail = "ra.ladinig@gmail.com";
    extraConfig = {
      pull = {
        rebase = false;
      };
      user.signingkey = "/home/raphael/.ssh/id_yubi.pub";
    };
    signing.format = "ssh";
    lfs.enable = true;
  };
}
