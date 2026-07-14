{ ... }: {
  services.keyd = {
    enable = true;
    keyboards.default = {
      ids = [ "*" ];
      settings = {
        main = {
          capslock = "backspace";
        };

        meta = {
          space = "toggle(colemak_dh)";
        };

        altgr = {
          capslock = "capslock";
          backspace = "capslock";

          j = "left";
          k = "down";
          l = "up";
          semicolon = "right";
        };

        colemak_dh = {
          q = "q"; w = "w"; e = "f"; r = "p"; t = "b";
          y = "j"; u = "l"; i = "u"; o = "y"; p = "semicolon";

          a = "a"; s = "r"; d = "s"; f = "t"; g = "g";
          h = "m"; j = "n"; k = "e"; l = "i"; semicolon = "o";

          z = "z"; x = "x"; c = "c"; v = "d"; b = "v";
          n = "k"; m = "h";

          comma = "comma"; dot = "dot"; slash = "slash";
        };
      };
    };
  };
}
