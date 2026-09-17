{ pkgs, ... }:
let
  myFirefoxProfile = pkgs.writeTextFile {
    name = "firefox-custom.profile";
    text = ''
      include ${pkgs.firejail}/etc/firejail/firefox.profile

      whitelist ''${HOME}/Music
      whitelist ''${HOME}/Videos
      whitelist ''${HOME}/Pictures
    '';
  };

  myTelegramProfile = pkgs.writeTextFile {
    name = "telegram-custom.profile";
    text = ''
      include ${pkgs.firejail}/etc/firejail/telegram.profile

      whitelist ''${HOME}/Music
      whitelist ''${HOME}/Videos
      whitelist ''${HOME}/Pictures
    '';
  };
in {
  environment.etc."firejail/globals.local".text = ''
    blacklist ''${HOME}/Documents
    blacklist ''${HOME}/Projects
  '';

  programs.firejail = {
    enable = true;
    wrappedBinaries = {
      firefox = {
        executable = "${pkgs.firefox}/bin/firefox";
        profile = "${myFirefoxProfile}";
      };

      telegram-desktop = {
        executable = "${pkgs.telegram-desktop}/bin/Telegram";
        profile = "${myTelegramProfile}";
      };

      prismlauncher = {
        executable = "${pkgs.prismlauncher}/bin/prismlauncher";
        profile = "${pkgs.firejail}/etc/firejail/prismlauncher.profile";
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
