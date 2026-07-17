function git-server
    if test (count $argv) -eq 0
        echo "usage: git-server <init|keygen|clone|create> [args]"
        return 1
    end

    set -l cmd $argv[1]
    set -l rest $argv[2..-1]

    switch $cmd
        case init
            __git-server-init $rest
        case keygen
            __git-server-keygen $rest
        case clone
            __git-server-clone $rest
        case create
            __git-server-create $rest
        case '*'
            echo "[git-server] unknown subcommand: $cmd"
            echo "usage: git-server <init|keygen|clone|create> [args]"
            return 1
    end
end
