function __git-server-mounted
    if not test -d /mnt/data
        echo "[git-server] /mnt/data not mounted, server does not exist"
        return 1
    end
end
