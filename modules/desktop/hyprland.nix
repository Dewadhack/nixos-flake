{ pkgs, ... }:

{
  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;

  # greetd + tuigreet: أخف display manager
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland";
        user = "greeter";
      };
    };
  };

  # أوقف GNOME وGDM
  services.displayManager.gdm.enable = false;
  services.desktopManager.gnome.enable = false;
  services.xserver.enable = false;

  environment.systemPackages = with pkgs; [
    waybar
    wofi
    dunst
    hyprpaper
    kitty
    xdg-desktop-portal-hyprland
    wl-clipboard
    brightnessctl
    playerctl
  ];
}
