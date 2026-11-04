# Edit this configuration file to define what should be installed off
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{
  imports =
    [ # Include the results of the hardware scan.
      ./modules/other.nix
      ./hardware-configuration.nix
      ./modules/fonts.nix
      ./modules/packages.nix
      ./modules/desktop.nix
      ./modules/terminal.nix
    ];
}
