function __git-server-create
    if test (count $argv) -eq 0
        echo "usage: git-server create <name>"
        return 1
    end

    __git-server-mounted; or return 1
    __git-server-active; or return 1

    set -l name $argv[1]

    if sudo nixos-container run git -- test -d /srv/git/$name.git
        echo "[git-server] repo '$name' already exists"
        return 1
    end

    sudo nixos-container run git -- git init --bare /srv/git/$name.git
    sudo nixos-container run git -- chown -R git:git /srv/git/$name.git
    echo "[git-server] repo '$name' created"
end
