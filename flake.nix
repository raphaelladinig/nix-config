{
  description = "nix-config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    impermanence.url = "github:nix-community/impermanence";

    nix-secrets = {
      flake = false;
      url = "git+ssh://git@github.com/raphaelladinig/nix-secrets.git?ref=main&shallow=1";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    inherit (self) outputs;

    systems = [
      "x86_64-linux"
    ];

    forEachSystem = f: nixpkgs.lib.genAttrs systems (system: f pkgsFor.${system});

    pkgsFor = nixpkgs.lib.genAttrs systems (
      system:
        import nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [
            self.overlays.additions
            self.overlays.modifications
          ];
        }
    );
  in {
    formatter = forEachSystem (pkgs: pkgs.alejandra);

    devShells = forEachSystem (pkgs: import ./shell.nix {inherit pkgs;});

    packages = forEachSystem (pkgs: import ./packages {inherit pkgs;});

    overlays = import ./overlays;

    nixosModules = import ./modules/nixos;

    homeManagerModules = import ./modules/home-manager;

    nixosConfigurations = {
      inspiron = nixpkgs.lib.nixosSystem {
        pkgs = pkgsFor.x86_64-linux;
        specialArgs = {
          inherit inputs outputs;
        };
        modules = [./hosts/inspiron];
      };
      lianqi = nixpkgs.lib.nixosSystem {
        pkgs = pkgsFor.x86_64-linux;
        specialArgs = {
          inherit inputs outputs;
        };
        modules = [./hosts/lianqi];
      };
      vm = nixpkgs.lib.nixosSystem {
        pkgs = pkgsFor.x86_64-linux;
        specialArgs = {
          inherit inputs outputs;
        };
        modules = [./hosts/vm];
      };
      hetzner-cloud = nixpkgs.lib.nixosSystem {
        pkgs = pkgsFor.x86_64-linux;
        specialArgs = {
          inherit inputs outputs;
        };
        modules = [./hosts/hetzner-cloud];
      };
    };
  };
}
