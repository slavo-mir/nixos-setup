{ ... }: {
  fileSystems."/mnt/data" = {
    device = "/dev/disk/by-uuid/13d1ce90-1f65-45c4-a79e-512b85bc21cf";
    fsType = "ext4";
    options = [ "nofail" "x-systemd.automount" "x-systemd.device-timeout=5s" ];
  };
}
