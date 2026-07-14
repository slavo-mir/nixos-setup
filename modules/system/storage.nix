{ pkgs, ... }: {
  fileSystems."/mnt/data" = {
    device = "/dev/disk/by-uuid/8d09990d-2cc3-4b32-8766-c456f008f8ee";
    fsType = "ext4"; 
    options = [ "nofail" "x-systemd.automount" "x-systemd.idle-timeout=60" "user" ];
  };
}
