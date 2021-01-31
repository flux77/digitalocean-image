{ pkgs ? import <nixpkgs> { } }:
let
  config = {
    imports =
      [ <nixpkgs/nixos/modules/virtualisation/digital-ocean-image.nix> ];

    # Headless - don't start a tty on the serial consoles.
    systemd.services."serial-getty@ttyS0".enable = false;
    systemd.services."serial-getty@hvc0".enable = false;
    systemd.services."getty@tty1".enable = false;
    systemd.services."autovt@".enable = false;

    # Make sure that SSH is available
    networking.firewall.allowedTCPPorts = [ 22 ];
    services.sshd.enable = true;

    # Use more aggressive compression then the default.
    virtualisation.digitalOceanImage.compressionMethod = "bzip2";
  };
in (pkgs.nixos config).digitalOceanImage
