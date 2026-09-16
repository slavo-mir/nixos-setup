{ ... }: {
  fileSystems."/mnt/data" = {
    device = "/dev/disk/by-uuid/da2cdf75-1f63-4bcd-be6e-c82e874fe0ee";
    fsType = "ext4";
    options = [ "nofail" "x-systemd.automount" "x-systemd.device-timeout=5s" ];
  };
}
