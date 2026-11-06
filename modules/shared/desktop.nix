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

  services = {
    accounts-daemon.enable = true;

    greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "/run/current-system/sw/bin/noctalia-greeter-session -- --session Niri";
        };
      };
    };
  };

  security.polkit = {
    enable = true;
    enablePkexecWrapper = true;
  };

  programs = {
    noctalia.enable = true;

    niri.enable = true;

    mango.enable = true;

    hyprland = {
      enable = true;
      withUWSM = false;
      xwayland.enable = false;
    }; # enable Hyprland
  };
}
