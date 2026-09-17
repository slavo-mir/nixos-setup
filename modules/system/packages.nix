{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    adguardhome
    alacritty
    brightnessctl
    dconf
    firefox
    firejail
    fish
    fzf
    git
    grim
    imv
    jdk21
    jq
    libnotify
    mako
    mpv
    obs-studio
    prismlauncher
    neovim
    playerctl
    rsync
    slurp
    steam
    sway
    swayidle
    swaylock
    telegram-desktop
    tmux
    tree
    unzip
    wf-recorder
    wget
    wl-clipboard
    wmenu
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
  ];
}
