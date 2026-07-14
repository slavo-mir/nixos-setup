{ ... }: {
  systemd.user.tmpfiles.rules = [
    "C %h/.config/foot    - - - - /etc/nixos/dotfiles/foot"
    "C %h/.config/gtk-3.0 - - - - /etc/nixos/dotfiles/gtk-3.0"
    "C %h/.config/mako    - - - - /etc/nixos/dotfiles/mako"
    "C %h/.config/nvim    - - - - /etc/nixos/dotfiles/nvim"
    "C %h/.config/sway    - - - - /etc/nixos/dotfiles/sway"
  ];
}
