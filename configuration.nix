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

  # boot.initrd.luks.devices."luks-c9fead96-2064-484f-9ec9-5f167cc986ac".device = "/dev/disk/by-uuid/c9fead96-2064-484f-9ec9-5f167cc986ac";

  system.stateVersion = "26.05";
}
