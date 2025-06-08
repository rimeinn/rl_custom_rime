{ pkgs ? import <nixpkgs> { } }:

with pkgs;
mkShell {
  name = "rl_custom_rime";
  buildInputs = [
    xmake
    pkg-config
    readline

    curl
    tar
    gzip
    librime
    glib
  ];
  # https://github.com/NixOS/nixpkgs/issues/314313#issuecomment-2134252094
  shellHook = ''
    LD="$CC"
  '';
}
