{ ... }:

{
  imports = [ ./hyprland.nix ];

  services.xserver.xkb = {
    layout = "fr,ar";
    variant = "azerty,";
    options = "grp:alt_shift_toggle";
  };

  console.keyMap = "fr";
}
