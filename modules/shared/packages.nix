{ pkgs, ... }:

{
  # services.keyd.enable = true;

  services.flatpak.enable = true;

  programs = {
    thunderbird.enable = true;
    nix-ld.enable = true;

    # Gamingd
    gamemode.enable = true;

    steam = {
      enable = true;
      gamescopeSession.enable = true;
    };
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
    localsend

    # wget
    # unzip
    # cargo

    # Disk Usage
    dua
    dust

    # [icons]
    papirus-icon-theme
    papirus-folders

    # [coding]
    nixfmt
    statix
    nixd
    nil
    # luau
    # luau-lsp

    # theme
    kdePackages.qt6ct
    nwg-look
    adw-gtk3
    lutgen
    lutgen-studio

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
