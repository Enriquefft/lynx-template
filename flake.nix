{
  description = "generic Flake for Next api's.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    flakelight.url = "github:nix-community/flakelight";
  };

  outputs = { flakelight, nixpkgs, ... }:
    flakelight ./. {

      inputs.nixpkgs = nixpkgs;

      devShell = {
        packages = pkgs:
          with pkgs; [

            bun
            nodejs

            coreutils

            lefthook
            commitlint-rs
            biome
          ];
        shellHook = pkgs: "";
      };
    };
}
