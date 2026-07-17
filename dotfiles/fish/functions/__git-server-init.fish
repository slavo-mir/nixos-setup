function __git-server-init
    __git-server-mounted; or return 1

    if test -d /mnt/data/git-repos; and test -d /mnt/data/git-keys
        echo "[git-server] already initialized"
        __git-server-active
        return
    end

    sudo mkdir -p /mnt/data/git-repos /mnt/data/git-keys
    sudo systemctl restart container@git

    __git-server-active; and echo "[git-server] initialized and active"
end
