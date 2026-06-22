{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
      ll = "ls -la";
      rebuild = "sudo nixos-rebuild switch --flake ~/nixos-flake#framework13";
      update = "nix --extra-experimental-features 'nix-command flakes' flake update ~/nixos-flake";
    };
  };

  home.packages = with pkgs; [
    btop
    fastfetch
    ripgrep
    fd
    bat
  ];
}
