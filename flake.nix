{
  description = "Configuration flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    luciole.url = "github:noctalia-dev/luciole";
    nixos-hardware = {
      url = "github:NixOS/nixos-hardware";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs:
    let
      inherit (inputs) nixpkgs nixos-hardware;

      mkHost = system: modules: specialArgs:
        nixpkgs.lib.nixosSystem {
          inherit system modules specialArgs;
        };
    in
  {
    nixosConfigurations = {
      Computery = mkHost "x86_64-linux" [
        ./hosts/Computery
        nixos-hardware.nixosModules.dell-precision-5820
      ] {inherit inputs; };

      Laptopery = mkHost "x86_64-linux" [
        ./hosts/Laptopery
      ] { inherit inputs; };
    };
  };
}
