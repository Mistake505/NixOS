{ pkgs, ... }:

{
  programs = {
    # tmux.enable = true;

    starship.enable = true;

    bat.enable = true;

    fish.enable = true;
    # yazi.enable = true;
    zoxide.enable = true;

    htop.enable = true;
  };

#   console = {
#     font = null;
#
#     # rose pine
#     colors = [
#         "191724" # black
#         "eb6f92" # red
#         "31748f" # green
#         "f6c177" # yellow
#         "9ccfd8" # blue
#         "c4a7e7" # magenta
#         "ebbcba" # cyan
#         "e0def4" # white
#         "26233a" # bright black
#         "eb6f92" # bright red
#         "31748f" # bright green
#         "f6c177" # bright yellow
#         "9ccfd8" # bright blue
#         "c4a7e7" # bright magenta
#         "ebbcba" # bright cyan
#         "e0def4" # bright white
#       ];
#
#       # rose pine moon
#       # console.colors = [
#       #     "232136" # black
#       #     "eb6f92" # red
#       #     "3e8fb0" # green
#       #     "f6c177" # yellow
#       #     "9ccfd8" # blue
#       #     "c4a7e7" # magenta
#       #     "ea9a97" # cyan
#       #     "e0def4" # white
#       #     "393552" # bright black
#       #     "eb6f92" # bright red
#       #     "3e8fb0" # bright green
#       #     "f6c177" # bright yellow
#       #     "9ccfd8" # bright blue
#       #     "c4a7e7" # bright magenta
#       #     "ea9a97" # bright cyan
#       #     "e0def4" # bright white
#       #   ];
#
#       # catppuccin
#       # console.colors = [
#       #   "45475a" # black
#       #   "f38ba8" # red
#       #   "a6e3a1" # green
#       #   "f9e2af" # yellow
#       #   "89b4fa" # blue
#       #   "f5c2e7" # magenta
#       #   "94e2d5" # cyan
#       #   "bac2de" # white
#       #   "585b70" # bright black
#       #   "f38ba8" # bright red
#       #   "a6e3a1" # bright green
#       #   "f9e2af" # bright yellow
#       #   "89b4fa" # bright blue
#       #   "f5c2e7" # bright magenta
#       #   "94e2d5" # bright cyan
#       #   "a6adc8" # bright white
#       # ];
#   };

  users.extraUsers.ckjos = {
    shell = pkgs.fish;
  };

  environment.systemPackages = with pkgs; [
    kitty
    # alacritty
    stow
    yazi
    pciutils

    # term utils
    eza
    zellij
    btop
    nvtopPackages.full

    # tree

    # larp setup
    fortune
    figlet
    cowsay
    sl
    cmatrix
    pipes
    cbonsai
    cava
    fetch
    fastfetch
  ];
}
