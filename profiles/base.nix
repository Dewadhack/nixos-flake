{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    wget
    curl
    htop
  ];

  programs.neovim.enable = true;
}
