{
  pkgs ? import <nixpkgs> { },
}:

with pkgs;
mkShell {
  name = "rl_custom_rime";
  buildInputs = [
    xmake
    pkg-config
    readline

    curl
    gnutar
    gzip
    librime
    glib
  ];
}
