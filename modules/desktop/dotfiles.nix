{ ... }: {
  systemd.user.tmpfiles.rules = [
    "C %h/.config/alacritty       - - - - /etc/nixos/dotfiles/alacritty"
    "C %h/.config/gtk-3.0         - - - - /etc/nixos/dotfiles/gtk-3.0"
    "C %h/.config/mako            - - - - /etc/nixos/dotfiles/mako"
    "C %h/.config/nvim            - - - - /etc/nixos/dotfiles/nvim"
    "C %h/.config/sway            - - - - /etc/nixos/dotfiles/sway"
    "C %h/.config/tmux            - - - - /etc/nixos/dotfiles/tmux"
    "C %h/.config/fish/functions  - - - - /etc/nixos/dotfiles/fish/functions"
    "C %h/.config/git             - - - - /etc/nixos/dotfiles/git"

    "d %h/.ssh          0700 - - -"
    "C %h/.ssh/config   0600 - - - /etc/nixos/dotfiles/ssh/config"
    "C %h/.gitconfig    0644 - - - /etc/nixos/dotfiles/git/gitconfig"
  ];
}
