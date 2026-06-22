{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    gnumake
    python3
    nodejs
  ];
}
