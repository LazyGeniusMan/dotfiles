# Papirus Icon Nordic Color
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (papirus-icon-theme.override { color = "nordic"; })
    papirus-folders
  ];
}
