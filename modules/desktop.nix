{ config, pkgs, ... }:

{
  # when hyprland fails to build with "glaze" 
  # nixpkgs.overlays = [
  #     (final: prev: {
  #       hyprland = prev.hyprland.override {
  #         glaze = prev.glaze.overrideAttrs (old: {
  #           src = prev.fetchFromGitHub {
  #             owner = "stephenberry";
  #             repo = "glaze";
  #             rev = "v7.9.1";
  #             hash = "sha256-NRRq5MGF2f5PW0teYnq58ELzson+U6KHVPaY6r30KLA=";
  #           };
  #         });
  #       };
  #     })
  #   ];

  services.accounts-daemon.enable = true;

  security.polkit = {
    enable = true;
    enablePkexecWrapper = true;
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "/run/current-system/sw/bin/noctalia-greeter-session -- --session Niri";
      };
    };
  };
 
  programs.noctalia.enable = true;
  programs.niri.enable = true;
  # programs.mango.enable = true;
  # programs.hyprland = {
  #   enable = true;
  #   withUWSM = false;
  #   xwayland.enable = true;
  # }; # enable Hyprland
}
