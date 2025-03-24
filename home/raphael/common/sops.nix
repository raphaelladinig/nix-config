{keyFile ? "/home/raphael/.config/sops-nix/age_raphael"}: {
  sops = {
    defaultSopsFormat = "binary";
    age.keyFile = keyFile;
  };
}
