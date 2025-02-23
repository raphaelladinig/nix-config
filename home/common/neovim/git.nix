{pkgs, ...}: {
  imports = [
    ./plugins/2_gitsigns
    ./plugins/2_diffview
  ];
}
