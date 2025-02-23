{
  vimUtils,
  fetchFromGitHub,
}:
vimUtils.buildVimPlugin {
  pname = "blink-cmp-avante";
  version = "2025-03-05";
  src = fetchFromGitHub {
    owner = "Kaiser-Yang";
    repo = "blink-cmp-avante";
    tag = "v0.1.0";
    sha256 = "sha256-r+GdP7CzndXk2x6h066Ww4LuMBgKDW2GMv/d39r1M48=";
  };
  meta.homepage = "https://github.com/Kaiser-Yang/blink-cmp-avante";
}
