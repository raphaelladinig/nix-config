default:
  @just --list

rebuild mode='switch' host='${HOSTNAME}':
  sudo nixos-rebuild {{mode}} --flake .#{{host}}

rebuild-boot host='${HOSTNAME}': (rebuild 'boot' host)

format-disk host='${HOSTNAME}':
  sudo nix run --experimental-features "nix-command flakes" github:nix-community/disko -- --mode disko ./hosts/{{host}}/disko.nix

install host='${HOSTNAME}': (format-disk host)
  sudo nixos-install --no-root-passwd --flake .#{{host}}

update: 
  nix flake update

clean: clean-persist collect-garbage

clean-persist:
  sudo PERSIST_DIRS="$PERSIST_DIRS" PERSIST_FILES="$PERSIST_FILES" ./scripts/clean-persist.sh

collect-garbage:
  sudo nix-collect-garbage -d
