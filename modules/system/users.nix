{ pkgs, ... }: {
  users.users.slavomir = {
    isNormalUser = true;

    extraGroups = [
      "networkmanager"
      "wheel"
      "video"
    ];

    shell = pkgs.fish;
  };
}
