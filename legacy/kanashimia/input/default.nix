{
  # Mouse and touchpad configuration.
  services.xserver.libinput = {
    enable = true;
    touchpad = {
      accelSpeed = "-0.1";
      naturalScrolling = true;
    };
    mouse = {
      accelSpeed = "-0.75";
      accelProfile = "flat";
    };
  };

  # Keyboard config.
  services.xserver = {
    autoRepeatInterval = 30;
    autoRepeatDelay = 300;
  };

  # Layout config.
  services.xserver = {
    xkbOptions = "caps:swapescape,grp:rctrl_toggle,compose:menu,grp_led:num";
    layout = "us(dvorak),us,ru";
  };
}
