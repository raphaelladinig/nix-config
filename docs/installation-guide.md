# Prerequisites

- ssh key for nix-secrets
- /tmp/disk.key for luks2 encryption password if required

# Installing

1. Clone nix-config:
```sh
git clone git@github.com:raphaelladinig/nix-config.git && cd nix-config
```

2. Enter the nix-shell:

```sh
nix-shell
```

3. Install:

```sh
just install <hostname>
```

4. Post-Install:

- place age keys for sops in correct locations if required
- rebuild again (os-prober & sops) if required
- configure disk for yubikey fido2 decryption if required
- ...
