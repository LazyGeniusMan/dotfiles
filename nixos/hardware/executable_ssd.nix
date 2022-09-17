# SSD Optimization
{ config, pkgs, ... }:

{
  # Optimization
  fileSystems."/".options = [
    "noatime"
    "nodiratime"
    "discard"
  ];

  # Trim
  services.fstrim.enable = true;
}
