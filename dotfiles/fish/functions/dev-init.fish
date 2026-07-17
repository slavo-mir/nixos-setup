function dev-init
    set -l dir (pwd)

    if not string match -q "$HOME/dev/*" $dir
        echo "[bootstrap] not inside ~/dev/{personal,local,uni} — git identity would not resolve"
        return 1
    end

    if test -z (git config user.email 2>/dev/null)
        echo "[bootstrap] git user.email did not resolve here — check gitconfig includeIf paths"
        return 1
    end

    if not test -d .git
        git init -q
        echo "[bootstrap] git repo initialized ("(git config user.name)" <"(git config user.email)">)"
    end

    __bootstrap-flake
    __bootstrap-gitignore
    __bootstrap-envrc

    git add .
    echo "[bootstrap] tracked initial files"

    direnv allow
    echo "[bootstrap] done"
end
