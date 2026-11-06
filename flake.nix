{
  description = "Configuration flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware = {
      url = "github:NixOS/nixos-hardware";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixos-hardware, ... }:
    let
      mkHost = modules:
        nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          inherit modules;
        };
      in
  {
    nixosConfigurations = {
      Computery = mkHost [
        ./hosts/Computery
        nixos-hardware.nixosModules.dell-precision-5820
      ];

      Laptopery = mkHost [
        ./hosts/Laptopery
      ];
    };
  };
}
