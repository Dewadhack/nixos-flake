{ config, pkgs, ... }:

{
  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
  };
}
