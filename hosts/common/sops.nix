{keyFile ? "/persist/var/lib/sops-nix/keys.txt"}: {
  sops = {
    defaultSopsFormat = "binary";
    age.keyFile = keyFile;
  };
}
