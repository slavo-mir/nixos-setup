function __bootstrap-envrc
    if test -f .envrc
        return
    end

    echo "use flake" > .envrc
    echo "[bootstrap] .envrc created"
end
