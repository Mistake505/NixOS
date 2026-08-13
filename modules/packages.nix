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
 
  # services.keyd.enable = true; 



  programs.noctalia.enable = true;
  programs.niri.enable = true;
  # programs.mango.enable = true;
  # programs.hyprland = {
  #   enable = true;
  #   withUWSM = false;
  #   xwayland.enable = true;
  # }; # enable Hyprland
  
  # programs.yazi.enable = true;
  programs.zoxide.enable = true;

  services.flatpak.enable = true;
  
  programs.gamemode.enable = true;
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };


  programs.git.enable = true;
  programs.lazygit.enable = true;

  environment.systemPackages = with pkgs; [
    librewolf
    kitty
    dbus
    noctalia-greeter
    fetch
    tor-browser
    pywalfox-native
    capitaine-cursors
    gimp
    nautilus
    stow 
    yazi
    vesktop

    # theme
    kdePackages.qt6ct
    nwg-look
    adw-gtk3

    # larp setup
    fortune
    figlet
    cowsay
    sl
    cmatrix
    pipes
    cbonsai
    cava
    btop
    tree

    # Gaming
    mangohud
    protonup-ng
    lutris
    heroic
    xwayland-satellite
    prismlauncher
	
    # Dependancies LazyVim + Yazi
    luaPackages.tree-sitter-cli
    clang
    curl
    fzf
    ripgrep
    fd
    file
    ffmpeg
    _7zz-rar
    jq
    poppler
    resvg
    imagemagick
    wl-clipboard
    
   # vscodium
  ];

  programs.fish.enable = true;
  users.extraUsers.ckjos = {
    shell = pkgs.fish;
  };

}

