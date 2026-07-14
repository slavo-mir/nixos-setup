{ ... }: {
  systemd.services.adguardhome.serviceConfig = {
    DynamicUser = true;
    ProtectSystem = "strict";
    ProtectHome = true;
    PrivateTmp = true;
    NoNewPrivileges = true;
    ProtectKernelTunables = true;
    ProtectKernelModules = true;
    ProtectControlGroups = true;
    RestrictAddressFamilies = [ "AF_INET" "AF_INET6" "AF_UNIX" ];
    RestrictNamespaces = true;
    LockPersonality = true;
    MemoryDenyWriteExecute = true;
    AmbientCapabilities = [ "CAP_NET_BIND_SERVICE" ];
    CapabilityBoundingSet = [ "CAP_NET_BIND_SERVICE" ];
  };
}
