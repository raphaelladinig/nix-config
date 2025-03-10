{
  imports = [
    ./core
    ./git.nix
    ./ai.nix
    ./languages/python
    ./languages/nix
    ./languages/cpp
    ./languages/csharp
    ./languages/c
    ./languages/asm
    ./languages/javascript
    ./languages/markdown
    ./languages/scss
    ./languages/css
    ./languages/html
    ./languages/json
    ./languages/xml
    ./languages/typst
    ./languages/svelte
    ./languages/vue
    ./languages/tailwindcss
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
