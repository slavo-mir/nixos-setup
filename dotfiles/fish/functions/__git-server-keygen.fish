function __git-server-keygen
    __git-server-mounted; or return 1

    set -l keypath ~/.ssh/id_ed25519_gitserver

    if test -f $keypath
        read -P "Key already exists, overwrite? (y/N) " -l confirm
        test "$confirm" = "y"; or return 1
        rm -f $keypath $keypath.pub
    end

    ssh-keygen -t ed25519 -C "slavomir@nixos-git" -f $keypath -N ""

    sudo mkdir -p /mnt/data/git-repos/.ssh
    sudo cp $keypath.pub /mnt/data/git-repos/.ssh/authorized_keys
    sudo chmod 700 /mnt/data/git-repos/.ssh
    sudo chmod 600 /mnt/data/git-repos/.ssh/authorized_keys

    ssh-keygen -R 10.100.0.2 2>/dev/null

    __git-server-active; or begin
        echo "[git-server] key written, but container is not running — start it, then rerun git-server-keygen to finish (chown)"
        return 1
    end

    sudo nixos-container run git -- chown -R git:git /srv/git/.ssh
    echo "[git-server] key installed"
end
