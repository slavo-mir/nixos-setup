{ config, pkgs, ... }: {
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-wlr
    ];

    config = {
      common = {
        default = [
          "wlr"
        ];
      };
    };
  };

  systemd.user.tmpfiles.rules = [
    "d %h/Documents 0700 - - -"
    "d %h/Downloads 0700 - - -"
    "d %h/Music 0700 - - -"
    "d %h/Pictures 0700 - - -"
    "d %h/Videos 0700 - - -"

    "d %h/Music/fetched 0700 - - -"
    "d %h/Pictures/screenshots 0700 - - -"
    "d %h/Videos/fetched 0700 - - -"
    "d %h/Videos/recordings 0700 - - -"

    "d %h/Projects 0700 - - -"
    "d %h/Projects/personal 0700 - - -"
    "d %h/Projects/local 0700 - - -"
    "d %h/Projects/uni 0700 - - -"
  ];
}
