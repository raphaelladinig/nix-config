{
  additions = final: prev:
    import ../packages {pkgs = final;}
    // {
      vimPlugins = (prev.vimPlugins or {}) // import ../packages/vimPlugins {pkgs = final;};
    };

  modifications = final: prev: {
    nnn = import ./nnn.nix {inherit prev;};
  };
}
