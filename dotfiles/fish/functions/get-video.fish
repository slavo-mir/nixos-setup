function get-video
    nix shell github:NixOS/nixpkgs/nixpkgs-unstable#yt-dlp github:NixOS/nixpkgs/nixpkgs-unstable#deno --command yt-dlp \
        -f "bestvideo+bestaudio/best" --merge-output-format mp4 \
        --extractor-args "youtube:player_client=ios,mweb" \
        -o "$HOME/Videos/fetched/%(title)s.%(ext)s" \
        --add-metadata $argv
end
