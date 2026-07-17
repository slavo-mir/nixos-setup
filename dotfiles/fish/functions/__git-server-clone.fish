function __git-server-clone
    if test (count $argv) -eq 0
        echo "usage: git-server clone <name>"
        return 1
    end
    __git-server-active; or return 1
    git clone git-local:/srv/git/$argv[1].git
end
