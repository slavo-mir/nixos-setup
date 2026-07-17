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

  # boot.initrd.luks.devices."luks-9f90e0f2-3a71-4c48-b481-79c076c372ee".device = "/dev/disk/by-uuid/9f90e0f2-3a71-4c48-b481-79c076c372ee";

  system.stateVersion = "26.05";
}
