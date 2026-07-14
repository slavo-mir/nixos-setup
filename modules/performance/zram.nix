{ ... }: {
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 20;
    priority = 100;
  };

  boot.kernel.sysctl."vm.swappiness" = 10;
}
