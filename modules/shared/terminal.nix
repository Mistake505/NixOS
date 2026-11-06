{ pkgs, ... }:

{
  programs = {
    fish.enable = true;
    # yazi.enable = true;
    zoxide.enable = true;

    neovim = {
      enable = true;
      defaultEditor = true;
    };

    git.enable = true;
    lazygit.enable = true;
  };

  users.extraUsers.ckjos = {
    shell = pkgs.fish;
  };

  environment.systemPackages = with pkgs; [
    kitty
    # alacritty
    stow
    yazi
    pciutils

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
    nvtopPackages.nvidia
    tree
    fetch
    fastfetch

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
  ];
}
