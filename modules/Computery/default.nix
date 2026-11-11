{ config, pkgs, ... }:

{
  hardware.nvidia = {
    open = true;
    package =
      config.boot.kernelPackages.nvidiaPackages.latest;

    modesetting.enable = true;
    nvidiaSettings = true;
  };

  services.xserver.videoDrivers = ["nvidia"];
}
