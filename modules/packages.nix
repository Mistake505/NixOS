{ pkgs, ... }:

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
    equibop
    gnome-keyring

    # [icons]
    papirus-icon-theme
    papirus-folders

    # [coding]
    # nixfmt
    nixd
    nil
    # luau
    # luau-lsp

    # theme
    kdePackages.qt6ct
    nwg-look
    adw-gtk3

    # Gaming
    mangohud
    protonup-ng
    # lutris
    heroic
    xwayland-satellite
    prismlauncher

    zed-editor

    python3
    python314Packages.pygobject3
    python313Packages.pygobject3
    gtk3
    gtk-layer-shell
  ];
}
