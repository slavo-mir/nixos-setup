{ ... }: {
  systemd.user.tmpfiles.rules = [
    "C %h/.config/alacritty       0700 - - - /etc/nixos/dotfiles/alacritty"
    "C %h/.config/gtk-3.0         0700 - - - /etc/nixos/dotfiles/gtk-3.0"
    "C %h/.config/mako            0700 - - - /etc/nixos/dotfiles/mako"
    "C %h/.config/nvim            0700 - - - /etc/nixos/dotfiles/nvim"
    "C %h/.config/sway            0700 - - - /etc/nixos/dotfiles/sway"
    "C %h/.config/tmux            0700 - - - /etc/nixos/dotfiles/tmux"
    "C %h/.config/fish/functions  0700 - - - /etc/nixos/dotfiles/fish/functions"
    "C %h/.config/git             0700 - - - /etc/nixos/dotfiles/git"

    "d %h/.ssh          0700 - - -"
    "C %h/.ssh/config   0600 - - - /etc/nixos/dotfiles/ssh/config"
    "C %h/.gitconfig    0600 - - - /etc/nixos/dotfiles/git/gitconfig"
  ];
}
