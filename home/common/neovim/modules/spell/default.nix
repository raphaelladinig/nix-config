let
  nvim-spell-de-utf8-dictionary = builtins.fetchurl {
    url = "https://ftp.nluug.nl/pub/vim/runtime/spell/de.utf-8.spl";
    sha256 = "1ld3hgv1kpdrl4fjc1wwxgk4v74k8lmbkpi1x7dnr19rldz11ivk";
  };

  nvim-spell-de-utf8-suggestions = builtins.fetchurl {
    url = "https://ftp.nluug.nl/pub/vim/runtime/spell/de.utf-8.sug";
    sha256 = "0j592ibsias7prm1r3dsz7la04ss5bmsba6l1kv9xn3353wyrl0k";
  };
in {
  home.file = {
    ".config/nvim/lua/modules/spell.lua".source = ./config.lua;
    ".config/nvim/spell/de.utf-8.spl".source = nvim-spell-de-utf8-dictionary;
    ".config/nvim/spell/de.utf-8.sug".source = nvim-spell-de-utf8-suggestions;
  };
}
