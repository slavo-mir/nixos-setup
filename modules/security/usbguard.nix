{ ... }: {
  services.usbguard = {
    enable = true;
    presentDevicePolicy = "allow";
    rules = ''
      allow with-interface equals { 03:*:* }
    '';
  };
}
