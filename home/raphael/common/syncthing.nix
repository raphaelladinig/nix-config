{
  inputs,
  hostName,
  ...
}: let
  secretsPath = "${builtins.toString inputs.nix-secrets}/secrets/age_raphael";
in {
  sops.secrets = {
    "${hostName}_syncthing-cert".sopsFile = "${secretsPath}/${hostName}_syncthing-cert";
    "${hostName}_syncthing-key".sopsFile = "${secretsPath}/${hostName}_syncthing-key";
  };

  services.syncthing = {
    enable = true;
    key = ".config/sops-nix/secrets/${hostName}_syncthing-key";
    cert = ".config/sops-nix/secrets/${hostName}_syncthing-cert";
    settings = {
      options = {
        urAccepted = -1;
      };
      devices = {
        "inspiron" = {
          id = "ZK6XBCB-PDML64D-OKWV3QD-EC2LC2W-TGRMLK4-PNVW2A4-BQPPTNO-UXJACQQ";
          autoAcceptFolders = true;
        };
        "lianqi" = {
          id = "A3TUWX2-GKQM2SE-AAFXP5V-3KHMHAE-LNETRRS-H3HUJYV-PC32SMU-M5VDHAO";
          autoAcceptFolders = true;
        };
        "hetzner-cloud" = {
          id = "PIDQDU6-R5DNKS2-GKCKY2N-MEFX4C6-LNSQ6R2-SKJ4M44-WI55H4U-BCZBUAN";
          autoAcceptFolders = true;
        };
      };
      folders = {
        "Notes" = {
          path = "/home/raphael/Notes";
          devices = ["inspiron" "lianqi" "hetzner-cloud"];
        };
        "Dev" = {
          path = "/home/raphael/Dev";
          devices = ["inspiron" "lianqi" "hetzner-cloud"];
        };
        "Sync" = {
          path = "/home/raphael/Sync";
          devices = ["inspiron" "lianqi" "hetzner-cloud"];
        };
      };
    };
  };
}
