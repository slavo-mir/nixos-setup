{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix

    ./modules/security
    ./modules/performance
    ./modules/desktop
    ./modules/system
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.configurationLimit = 5;

  system.stateVersion = "26.05";
}
