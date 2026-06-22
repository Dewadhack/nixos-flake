{ config, pkgs, ... }:

{
  home.username = "wadjih";
  home.homeDirectory = "/home/wadjih";

  home.stateVersion = "25.11";

  programs.home-manager.enable = true;

  programs.git.enable = true;
}
