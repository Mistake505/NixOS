{ config, pkgs, ... }:

{
  programs.fish.enable = true;
  users.extraUsers.ckjos = {
    shell = pkgs.fish;
  };

  # programs.yazi.enable = true;
  programs.zoxide.enable = true;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  programs.git.enable = true;
  programs.lazygit.enable = true;

  environment.systemPackages = with pkgs; [
    kitty
    stow
    yazi

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
    fetch

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
