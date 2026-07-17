{ config, pkgs, ... }: {
  containers.git = {
    autoStart = true;
    privateNetwork = true;
    hostAddress = "10.100.0.1";
    localAddress = "10.100.0.2";

    bindMounts = {
      "/srv/git" = {
        hostPath = "/mnt/data/git-repos";
        isReadOnly = false;
      };
      "/etc/ssh" = {
        hostPath = "/mnt/data/git-keys";
        isReadOnly = false;
      };
    };

    config = { pkgs, ... }: {
      services.openssh = {
        enable = true;
        settings.PasswordAuthentication = false;
        settings.PermitRootLogin = "no";
      };

      networking.firewall.allowedTCPPorts = [ 22 ];

      users.groups.git = {};

      users.users.git = {
        isNormalUser = true;
        group = "git";
        shell = "${pkgs.git}/bin/git-shell";
        home = "/srv/git";
      };

      environment.shells = [ "${pkgs.git}/bin/git-shell" ];
      environment.systemPackages = [ pkgs.git ];
      system.stateVersion = "26.05";
    };
  };

  systemd.services."container@git" = {
    requires = [ "mnt-data.mount" ];
    after = [ "mnt-data.mount" ];
  };
}
