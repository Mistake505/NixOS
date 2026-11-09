{
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };

    nvidia = {
      modesetting.enable = true;
      nvidiaSettings = true;
    };
  };

  services.xserver.videoDrivers = ["nvidia"];
}
