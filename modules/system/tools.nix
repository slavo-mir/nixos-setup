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
      nano = "nvim";
      vim = "nvim";
      vf = "nvim (fzf -m)";
    };

    shellInit = ''
      set -gx EDITOR nvim
      set -gx VISUAL nvim

      if status is-interactive
        set -g fish_greeting ""
      end
    '';
  };
}
