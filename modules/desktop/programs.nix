{ ... }: {
  programs.firefox = {
    enable = true;
    policies = {
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

        # "{1d87690d-2783-4eea-ac00-6b83a6d5948b}" = {
        #   install_url = "https://addons.mozilla.org/firefox/downloads/latest/solid-black-theme/latest.xpi";
        #   installation_mode = "force_installed";
        # };
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
