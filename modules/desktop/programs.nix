{ pkgs, ... }:
{
  programs.firefox = {
    enable = true;

    policies = {
      DisableTelemetry = true;
      DisableRemoteImprovements = true;

      DNSOverHTTPS = {
        Enabled = false;
        Locked = true;
      };

      LocalNetworkAccess = {
        Enabled = true;
        BlockTrackers = true;
        EnablePrompting = false;
        Locked = true;
      };

      DisplayBookmarksToolbar = "never";

      SearchEngines = {
        Default = "DuckDuckGo";
      };

      Permissions = {
        Camera         = { BlockNewRequests = true; Locked = true; };
        Location       = { BlockNewRequests = true; Locked = true; };
        Notifications  = { BlockNewRequests = true; Locked = true; };
        VirtualReality = { BlockNewRequests = true; Locked = true; };
      };

      ExtensionSettings = {
        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
          private_browsing = true;
        };
      };
    };

    preferences = {
      "browser.startup.homepage" = "chrome://browser/content/blanktab.html";
      "browser.newtabpage.enabled" = false;
      "browser.newtabpage.activity-stream.feeds.topsites" = false;

      "browser.search.suggest.enabled" = false;
      "browser.urlbar.showSearchTerms.enabled" = false;
      "browser.urlbar.trending.featureGate" = false;
      "browser.urlbar.suggest.bookmark" = false;
      "browser.urlbar.suggest.engines" = false;
      "browser.urlbar.suggest.openpage" = false;
      "browser.urlbar.suggest.quickactions" = false;
      "browser.urlbar.suggest.recentsearches" = false;
      "browser.urlbar.suggest.searches" = false;
      "browser.urlbar.suggest.topsites" = false;

      "browser.contentblocking.category" = "strict";
      "privacy.fingerprintingProtection" = true;
      "privacy.globalprivacycontrol.enabled" = true;
      "privacy.query_stripping.enabled" = true;
      "privacy.query_stripping.enabled.pbmode" = true;
      "network.dns.disablePrefetch" = true;
      "network.http.referer.disallowCrossSiteRelaxingDefault.top_navigation" = true;
      "network.http.speculative-parallel-limit" = 0;
      "network.prefetch-next" = false;

      "extensions.formautofill.creditCards.enabled" = false;

      "browser.tabs.firefox-view" = false;
      "browser.tabs.hoverPreview.enabled" = false;
      "browser.tabs.groups.enabled" = false;
      "media.hardwaremediakeys.enabled" = false;
      "media.videocontrols.picture-in-picture.video-toggle.enabled" = false;

      "browser.translations.enable" = false;

      "browser.ai.control.default" = "blocked";
      "browser.ai.control.linkPreviewKeyPoints" = "blocked";
      "browser.ai.control.pdfjsAltText" = "blocked";
      "browser.ai.control.sidebarChatbot" = "blocked";
      "browser.ai.control.smartTabGroups" = "blocked";
      "browser.ai.control.smartWindow" = "blocked";
      "browser.ai.control.translations" = "blocked";
      "browser.ml.chat.enabled" = false;
      "browser.ml.chat.page" = false;
      "browser.ml.linkPreview.enabled" = false;
      "browser.smartwindow.memories.generateFromConversation" = false;
      "browser.smartwindow.memories.generateFromHistory" = false;
      "browser.tabs.groups.smart.enabled" = false;
      "extensions.ml.enabled" = false;
      "pdfjs.enableAltText" = false;

      "sidebar.revamp" = true;
      "sidebar.verticalTabs" = true;
      "sidebar.visibility" = "hide-sidebar";
      "sidebar.main.tools" = "";

      "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features" = false;
      "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons" = false;
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
