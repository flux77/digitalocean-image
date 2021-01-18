{ pkgs ? import <nixpkgs> { } }:
let
  config = {
    imports =
      [ <nixpkgs/nixos/modules/virtualisation/digital-ocean-image.nix> ];

    virtualisation.digitalOceanImage.compressionMethod = "bzip2";
  };
in (pkgs.nixos config).digitalOceanImage
