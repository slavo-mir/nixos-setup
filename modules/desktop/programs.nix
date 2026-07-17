{ pkgs, ... }: {
  programs.firefox = {
    enable = true;

    policies = {
      SearchEngines = {
        Default = "DuckDuckGo";
      };

      DNSOverHTTPS = {
        Enabled = false;
        Locked = true;
      };
 
      ExtensionSettings = {
        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
          private_browsing = true;
        };
      };
    };
  };

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
}
