# Papirus Icon
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    papirus-icon-theme
    papirus-folders
  ];
}
