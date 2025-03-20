{
  inputs,
  hostName,
  ...
}: let
  secretsPath = "${builtins.toString inputs.nix-secrets}/secrets";
in {
  sops.secrets = {
    "${hostName}_syncthing-cert".sopsFile = "${secretsPath}/${hostName}_syncthing-cert";
    "${hostName}_syncthing-key".sopsFile = "${secretsPath}/${hostName}_syncthing-key";
  };

  services.syncthing = {
    enable = true;
    key = ".config/sops-nix/secrets/${hostName}_syncthing-key";
    cert = ".config/sops-nix/secrets/${hostName}_syncthing-cert";
    overrideDevices = true;
    overrideFolders = true;
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
      };
      folders = {
        "notes" = {
          path = "/home/raphael/notes";
          devices = ["inspiron" "lianqi"];
        };
        "dev" = {
          path = "/home/raphael/dev";
          devices = ["inspiron" "lianqi"];
        };
        "sync" = {
          path = "/home/raphael/sync";
          devices = ["inspiron" "lianqi"];
        };
      };
    };
  };
}
