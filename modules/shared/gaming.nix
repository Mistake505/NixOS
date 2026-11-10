{ pkgs, ... }:

{
  programs = {
    gamemode.enable = true;

    steam = {
      enable = true;
      # gamescopeSession = true;
    };
  };

  environment.systemPackages = with pkgs; [
    # Gaming
    mangohud
    protonup-ng
    # lutris
    heroic
    xwayland-satellite
    prismlauncher
  ];
}
