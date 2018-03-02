let
  pkgs = import <nixpkgs> {};

  tex = pkgs.texlive.combine {
    inherit (pkgs.texlive)
    scheme-full
    ;
  };
in rec
{
  talks = pkgs.stdenv.mkDerivation rec {
    name = "talks-env";
    src = ./.;
    buildInputs = [
      tex
      pkgs.emacs
    ];
    shellHook = ''
      export MT_TEXMFMAIN="${tex}/share/texmf/"
    '';
  };
}
