{ pkgs ? import <nixpkgs> { } }:

with pkgs;
mkShell {
  name = "rl_custom_rime";
  buildInputs = [
    stdenv.cc
    pkg-config
    xmake
    librime
    readline.dev
    glib.dev
  ];
  # https://github.com/NixOS/nixpkgs/issues/314313#issuecomment-2134252094
  shellHook = ''
    LD="$CC"
  '';
}
