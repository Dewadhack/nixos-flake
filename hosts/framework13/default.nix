{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/system/default.nix
    ../../modules/networking/default.nix
    ../../modules/desktop/default.nix
    ../../modules/audio/default.nix
    
    ../../profiles/base.nix
    ../../profiles/dev.nix
    ../../profiles/performance.nix
    ../../modules/hardware/fingerprint.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  users.users.wadjih = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  programs.firefox.enable = true;

  system.stateVersion = "25.11";
}
