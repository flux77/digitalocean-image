# DigitalOcean Image

This repository contains a nix expression for building a custom disk image with [NixOS](https://nixos.org/) for [use with DigitalOcean](https://www.digitalocean.com/docs/images/custom-images/).

The nix expression is very simple, and wraps facilities provided by the NixOS project.  The main value of this repository is that the image is already built, and available as a [build artifact](https://patchouli.sr.ht/builds.sr.ht/artifacts/~rj/400030/86cd07a7bacf370a/nixos.qcow2.bz2).

## Install

1) Obtain a copy of the image.  Either build using `nix-build` locally, or download the build artifact.
2) Upload the custom image to your account on DigitalOcean, following [DigitalOcean's instructions](https://www.digitalocean.com/docs/images/custom-images/quickstart/).  
3) Start droplets using that image.

More complete instructions can be found [here](https://justinas.org/nixos-in-the-cloud-step-by-step-part-1).

## Contribute

Feedback and PRs welcome.

## Related Projects

* [NixOS Cloud Images](https://nixos.cloud/): NixOS install images for Amazon (aarch64, x86_64), openstack and kexec.

## License

BSD (c) Robert Johnstone