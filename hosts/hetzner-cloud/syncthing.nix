{
  inputs,
  config,
  ...
}: let
  secretsPath = "${builtins.toString inputs.nix-secrets}/secrets";
  hostName = config.networking.hostName;
in {
  sops.secrets = {
    "${hostName}_syncthing-cert".sopsFile = "${secretsPath}/${hostName}_syncthing-cert";
    "${hostName}_syncthing-key".sopsFile = "${secretsPath}/${hostName}_syncthing-key";
  };

  services.syncthing = {
    enable = true;
    key = "/run/secrets/${hostName}_syncthing-key";
    cert = "/run/secrets/${hostName}_syncthing-cert";
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
          path = "/var/lib/syncthing/Notes";
          devices = ["inspiron" "lianqi" "hetzner-cloud"];
        };
        "Dev" = {
          path = "/var/lib/syncthing/Dev";
          devices = ["inspiron" "lianqi" "hetzner-cloud"];
        };
        "Sync" = {
          path = "/var/lib/syncthing/Sync";
          devices = ["inspiron" "lianqi" "hetzner-cloud"];
        };
      };
    };
  };

  systemd.services.syncthing.environment.STNODEFAULTFOLDER = "true";
}
