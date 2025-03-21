{keyFile ? "/persist/home/raphael/.config/sops/age/keys.txt"}: {
  sops = {
    defaultSopsFormat = "binary";
    age.keyFile = keyFile;
  };
}
