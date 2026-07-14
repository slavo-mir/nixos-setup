{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    adguardhome
    autotiling
    brightnessctl
    dconf
    easyeffects
    firefox
    firejail
    fish
    foot
    fzf
    git
    grim
    imv
    libnotify
    mako
    mpv
    neovim
    playerctl
    slurp
    steam
    sway
    swayidle
    swaylock
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
