{
  imports = [
    ./core
    ./git.nix
    ./ai.nix
    ./modules/python
    ./modules/nix
    ./modules/cpp
    ./modules/csharp
    ./modules/c
    ./modules/asm
    ./modules/javascript
    ./modules/markdown
    ./modules/scss
    ./modules/css
    ./modules/html
    ./modules/json
    ./modules/xml
    ./modules/typst
    ./modules/svelte
    ./modules/vue
    ./modules/tailwindcss
  ];

  home.file = {
    ".config/nvim/init.lua".source = ./init.lua;
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };
}
