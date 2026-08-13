{ config, pkgs, ... }:

{
  # services.keyd.enable = true;

  services.flatpak.enable = true;

  programs.gamemode.enable = true;
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };

  environment.systemPackages = with pkgs; [
    librewolf
    dbus
    noctalia-greeter
    tor-browser
    pywalfox-native
    capitaine-cursors
    gimp
    nautilus
    vesktop
    gnome-keyring
    
    # code
    nixfmt
    nixd 
    nil
    luau
    luau-lsp

    # theme
    kdePackages.qt6ct
    nwg-look
    adw-gtk3
    
    # Gaming
    mangohud
    protonup-ng
    lutris
    heroic
    xwayland-satellite
    prismlauncher

    vscodium
  ];
}
