{ config, pkgs, ... }: {
  xdg.portal = {
    enable = true;
    extraPortals = [ 
      pkgs.xdg-desktop-portal-wlr
    ];
    
    config = {
      common = {
        default = [ "wlr" ];
      };
    };
  };

  systemd.user.tmpfiles.rules = [
    "d %h/Documents 0755 - - -"
    "d %h/Downloads 0755 - - -"
    "d %h/Music 0755 - - -"
    "d %h/Pictures 0755 - - -"
    "d %h/Videos 0755 - - -"

    "d %h/Music/fetched 0755 - - -"
    "d %h/Pictures/screenshots 0755 - - -"
    "d %h/Videos/fetched 0755 - - -"
    "d %h/Videos/recordings 0755 - - -"

    "d %h/dev 0755 - - -"
    "d %h/dev/personal 0755 - - -"
    "d %h/dev/local 0755 - - -"
    "d %h/dev/uni 0755 - - -"
  ];
}
