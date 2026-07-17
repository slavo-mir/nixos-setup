function get-music
    nix shell nixpkgs#yt-dlp --command yt-dlp -x --audio-format mp3 --audio-quality 0 \
        -o "~/Music/fetched/%(title)s.%(ext)s" \
        --add-metadata --embed-thumbnail $argv
end
