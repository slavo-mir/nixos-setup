{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.fish = {
    enable = true;

    shellAliases = {
      vim = "nvim";
      vf = "nvim (fzf -m)";
    };

    shellInit = ''
      set -gx EDITOR nvim
      set -gx VISUAL nvim

      if status is-interactive
        set -g fish_greeting ""
      end

      function get-music
        nix shell nixpkgs#yt-dlp --command yt-dlp -x --audio-format mp3 --audio-quality 0 \
          -o "~/Music/fetched/%(title)s.%(ext)s" \
          --add-metadata --embed-thumbnail $argv
      end

      function get-video
        nix shell nixpkgs#yt-dlp --command yt-dlp -f "bestvideo+bestaudio/best" --merge-output-format mp4 \
          -o "~/Videos/fetched/%(title)s.%(ext)s" \
          --add-metadata $argv
      end
    '';
  };
}
