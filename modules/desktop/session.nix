{ pkgs, ... }: {
  services.getty.autologinUser = "slavomir";

  environment.sessionVariables = {
    _JAVA_AWT_WM_NONREPARENTING = "1";

    XDG_SESSION_TYPE = "wayland";
    XDG_CURRENT_DESKTOP = "sway";
    XDG_SESSION_DESKTOP = "sway";

    MOZ_ENABLE_WAYLAND = "1";
    QT_QPA_PLATFORM = "wayland";
    GDK_BACKEND = "wayland,x11";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    NIXOS_OZONE_WL = "1";

    WLR_NO_HARDWARE_CURSOR = "1";
  };

  programs.fish.loginShellInit = ''
    if test -z "$DISPLAY"; and test (tty) = /dev/tty1
      exec dbus-run-session sway --unsupported-gpu
    end
  '';
}
