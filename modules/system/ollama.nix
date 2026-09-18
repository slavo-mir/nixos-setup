{ pkgs, ... }: {
  services.ollama = {
    enable = true;
    package = pkgs.ollama-cuda;
    host = "127.0.0.1";
  };

  systemd.services.ollama.serviceConfig = {
    ProtectHome = true;
    ProtectSystem = "strict";
    PrivateTmp = true;
    NoNewPrivileges = true;
    ProtectKernelTunables = true;
    ProtectKernelModules = true;
    ProtectControlGroups = true;
    RestrictNamespaces = true;
    ReadWritePaths = [ "/var/lib/ollama" ];
  };
}
