{ pkgs, ... }: {
  services.getty.autologinUser = "slavomir";

  programs.fish.loginShellInit = ''
    if test -z "$DISPLAY"; and test (tty) = /dev/tty1
      exec dbus-run-session sway --unsupported-gpu
    end
  '';
}
