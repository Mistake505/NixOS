# Edit this configuration file to define what should be installed off
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../../modules/shared/other.nix
      ../../modules/shared/fonts.nix
      ../../modules/shared/packages.nix
      ../../modules/shared/desktop.nix
      ../../modules/shared/terminal.nix
      ../../modules/Computery/graphics.nix
    ];

    networking.hostName = "Computery"; # Define your hostname.
}
