{ config, pkgs, ... }:

{
  hardware = {
    nvidia = {
      package =
        config.boot.kernelPackages.nvidiaPackages.legacy_580;

      open = false;

      modesetting.enable = true;

      powerManagement = {
        enable = true;
        finegrained = true;
      };

      nvidiaSettings = true;

      prime = {
        offload = {
          enable = true;
          enableOffloadCmd = true;
        };

        intelBusId = "PCI:0@0:2:0";
        nvidiaBusId = "PCI:1@0:0:0";
      };
    };

    bluetooth.enable = true;
  };

  environment.systemPackages = with pkgs; [
    mesa-demos
  ];

  services.xserver.videoDrivers = [
    "modesetting"
    "nvidia"
  ];

  services.upower.enable = true;
}
