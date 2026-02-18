#Config do SMLnobita viet
{ config, pkgs, lib, ... }:

{
  # Enable OpenGL
  hardware.graphics.enable = true;

  # Dùng NVIDIA
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;

    # RTX 3050 (Ampere) -> nên dùng open driver
    open = true;

    nvidiaSettings = true;

    powerManagement.enable = false;
    powerManagement.finegrained = false;

    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  # Tắt nouveau hoàn toàn
  boot.blacklistedKernelModules = [ "nouveau" ];
}

