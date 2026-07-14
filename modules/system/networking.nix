{ pkgs, ... }: {
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  networking.networkmanager.dns = "none";
  networking.nameservers = [ "127.0.0.1" ];

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ ];
    allowedUDPPorts = [ 53 ];
  };

  services.resolved.enable = false;

  services.openssh = {
    enable = true;
    settings.PasswordAuthentication = false;
  };

  services.adguardhome = {
    enable = true;
    host = "127.0.0.1";
    port = 3003;
    mutableSettings = false;
    settings = {
      dns = {
        bind_hosts = [ "127.0.0.1" ];
        port = 53;
        upstream_dns = [
          "tls://dns.quad9.net"
        ];
        bootstrap_dns = [
          "9.9.9.9"
          "149.112.112.112"
        ];
        upstream_mode = "load_balance";
        use_private_ptr_resolvers = true;
      };
      filtering = {
        protection_enabled = true;
        filtering_enabled = true;
        parental_enabled = false;
        safe_search.enabled = false;
      };
      filters = map (url: {
        enabled = true;
        inherit url;
      }) [
        "https://adguardteam.github.io/HostlistsRegistry/assets/filter_1.txt"
        "https://adguardteam.github.io/HostlistsRegistry/assets/filter_2.txt"
        "https://adguardteam.github.io/HostlistsRegistry/assets/filter_3.txt"
        "https://adguardteam.github.io/HostlistsRegistry/assets/filter_4.txt"
        "https://adguardteam.github.io/HostlistsRegistry/assets/filter_9.txt"
        "https://adguardteam.github.io/HostlistsRegistry/assets/filter_11.txt"
        "https://adguardteam.github.io/HostlistsRegistry/assets/filter_17.txt"
      ];
    };
  };
}
