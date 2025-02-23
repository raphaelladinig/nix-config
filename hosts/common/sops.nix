{keyFile ? "/persist/var/lib/sops-nix/age_raphael"}: {
  sops = {
    defaultSopsFormat = "binary";
    age.keyFile = keyFile;
  };
}
