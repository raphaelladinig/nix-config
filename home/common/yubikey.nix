{inputs, ...}: let
  secretsPath = "${builtins.toString inputs.nix-secrets}/secrets/age_raphael";
in {
  sops.secrets.u2f_keys = {
    sopsFile = "${secretsPath}/u2f_keys";
    path = ".config/Yubico/u2f_keys";
  };
}
