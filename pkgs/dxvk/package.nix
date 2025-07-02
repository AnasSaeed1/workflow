{
stdenv,
fetchurl,
}:
stdenv.mkDerivation rec {
  pname = "dxvk";
  version = "v1.10.9";
  src = fetchurl {
    url =
      "﻿http://github.com/pythonlover02/DXVK-Sarek/releases/download/${version}/dxvk-sarek-async-${version}.tar.gz";
    #hash = "sha256-jRo8kSdhtFDIefmEeK5k9vZjnkDOaEgXCg9rhZb9U8Y=";
  };
  buildCommand = ''
    runHook preInstall
    runHook unpackPhase
    mkdir $out
    cp -r ./*/* $out
    runHook postInstall
  '';
}
