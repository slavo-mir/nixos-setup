function get-video
    nix shell nixpkgs#yt-dlp --command yt-dlp -f "bestvideo+bestaudio/best" --merge-output-format mp4 \
        -o "~/Videos/fetched/%(title)s.%(ext)s" \
        --add-metadata $argv
end
