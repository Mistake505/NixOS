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

  services.xserver.videoDrivers = ["nvidia"];

  services.upower.enable = true;
}
