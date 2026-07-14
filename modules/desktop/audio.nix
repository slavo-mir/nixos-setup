{ pkgs, ... }: {
  services.pipewire = {
    enable = true;

    pulse.enable = true;
    alsa.enable = true;

    wireplumber.enable = true;
  };

  security.rtkit.enable = true;
}
