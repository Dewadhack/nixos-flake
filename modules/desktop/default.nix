{ ... }:

{
  imports = [ ./hyprland.nix ];

  services.xserver.xkb = {
    layout = "fr";
    variant = "azerty";
  };

  console.keyMap = "fr";
}
