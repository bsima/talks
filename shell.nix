let
  pkgs = import <nixpkgs> {};
in rec
{
  talks = pkgs.stdenv.mkDerivation rec {
    name = "talks-env";
    src = ./.;
    buildInputs = [
      pkgs.emacs
    ];
  };
}
