{ config, pkgs, ... }:

{
  hardware = {
    nvidia = {
      branch = "legacy_580";
      open = false;

      modesetting.enable = true;
      nvidiaSettings = true;
    };

    bluetooth.enable = true;
  };

  environment.systemPackages = with pkgs; [
    nvtopPackages.nvidia
  ];

  services.xserver.videoDrivers = ["nvidia"];

  services.upower.enable = true;
}
