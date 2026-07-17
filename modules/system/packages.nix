{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    adguardhome
    alacritty
    brightnessctl
    dconf
    easyeffects
    firefox
    firejail
    fish
    fzf
    git
    grim
    imv
    jq
    libnotify
    mako
    mpv
    neovim
    playerctl
    rsync
    slurp
    steam
    sway
    swayidle
    swaylock
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
