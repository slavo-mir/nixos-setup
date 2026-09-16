{ pkgs, ... }: {
  services.getty.autologinUser = "slavomir";

  environment.sessionVariables = {
    _JAVA_AWT_WM_NONREPARENTING = "1";
  };

  programs.fish.loginShellInit = ''
    if test -z "$DISPLAY"; and test (tty) = /dev/tty1
      exec dbus-run-session sway --unsupported-gpu
    end
  '';
}
