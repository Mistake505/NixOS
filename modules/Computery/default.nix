{ config, pkgs, ... }:

{
  hardware.nvidia = {
    open = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;

    modesetting.enable = true;
    nvidiaSettings = true;
  };

  environment.systemPackages = with pkgs; [
    nvtopPackages.nvidia
  ];

  services.xserver.videoDrivers = ["nvidia"];
}
