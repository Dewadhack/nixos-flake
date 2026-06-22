{ ... }:

{
  programs.kitty = {
    enable = true;
    font.name = "JetBrainsMono Nerd Font";
    font.size = 13;
    settings = {
      background_opacity = "0.95";
      confirm_os_window_close = 0;
    };
  };
}
