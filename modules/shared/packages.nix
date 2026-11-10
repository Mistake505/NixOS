{ pkgs, ... }:

{
  # services.keyd.enable = true;
  # services.input-remapper.enable = true;

  services.flatpak.enable = true;

  programs = {
    thunderbird.enable = true;

    nix-ld.enable = true;
  };

  environment.systemPackages = with pkgs; [
    librewolf
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

    # [Disk Usage]
    dua
    dust

    # [icons]
    papirus-icon-theme
    papirus-folders

    # [theme]
    kdePackages.qt6ct
    nwg-look
    adw-gtk3
    lutgen
    lutgen-studio

    gtk3
    gtk-layer-shell
  ];
}
