function get-music
    nix shell github:NixOS/nixpkgs/nixpkgs-unstable#yt-dlp github:NixOS/nixpkgs/nixpkgs-unstable#deno --command yt-dlp \
        -x --audio-format mp3 --audio-quality 0 \
        --extractor-args "youtube:player_client=ios,mweb" \
        -o "$HOME/Music/fetched/%(title)s.%(ext)s" \
        --add-metadata --embed-thumbnail $argv
end
