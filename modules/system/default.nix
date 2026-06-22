{ config, pkgs, ... }:

{
  time.timeZone = "Africa/Algiers";

  i18n.defaultLocale = "en_US.UTF-8";

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    curl
  ];
}
