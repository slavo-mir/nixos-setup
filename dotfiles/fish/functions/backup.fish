function backup
    __git-server-mounted; or return 1

    set -l dest /mnt/data/backup
    set -l sources dev Documents Downloads Music Pictures Videos

    if not test -d $dest
        echo "[backup] creating $dest and fixing permissions..."
        sudo mkdir -p $dest
        sudo chown $USER $dest
    end

    echo "[backup] starting sync to $dest..."

    for dir in $sources
        if test -d $HOME/$dir
            echo "[backup] sync: ~/$dir"
            mkdir -p $dest/$dir
            rsync -aH --delete --info=progress2 $HOME/$dir/ $dest/$dir/
        end
    end

    echo "[backup] done"
end
