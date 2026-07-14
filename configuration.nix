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
  boot.initrd.luks.devices."luks-c8fd9c66-0dac-4e6f-bc3e-becba1482688".device = "/dev/disk/by-uuid/c8fd9c66-0dac-4e6f-bc3e-becba1482688";

  system.stateVersion = "26.05";
}
