{ pkgs, ... }:
let
  myFirefoxProfile = pkgs.writeTextFile {
    name = "firefox-custom.profile";
    text = ''
      include ${pkgs.firejail}/etc/firejail/firefox.profile

      whitelist ''${HOME}/Music
      whitelist ''${HOME}/Videos
      whitelist ''${HOME}/Pictures
      whitelist ''${HOME}/Downloads
    '';
  };
in {
  programs.firejail = {
    enable = true;
    wrappedBinaries = {
      firefox = {
        executable = "${pkgs.firefox}/bin/firefox";
        profile = "${myFirefoxProfile}";
      };
      mpv = {
        executable = "${pkgs.mpv}/bin/mpv";
        profile = "${pkgs.firejail}/etc/firejail/mpv.profile";
      };
      imv = {
        executable = "${pkgs.imv}/bin/imv";
        profile = "${pkgs.firejail}/etc/firejail/imv.profile";
      };
      wget = {
        executable = "${pkgs.wget}/bin/wget";
        profile = "${pkgs.firejail}/etc/firejail/wget.profile";
      };
    };
  };
}
