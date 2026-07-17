function __git-server-active
    if not systemctl is-active --quiet container@git
        echo "[git-server] container not active, run: sudo nixos-rebuild switch --flake /etc/nixos"
        return 1
    end
end
