{
  hardware = {
    nvidia = {
      branch = "legacy_580";
      open = false;
    };

    bluetooth.enable = true;
  };

  services.upower.enable = true;
}
