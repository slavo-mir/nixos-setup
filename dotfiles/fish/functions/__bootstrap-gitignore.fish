function __bootstrap-gitignore
    if test -f .gitignore
        return
    end

    printf '%s\n' \
'.direnv/
result
result-*
.pre-commit-config.yaml' > .gitignore

    echo "[bootstrap] .gitignore created"
end
