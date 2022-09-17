# Communication
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    discord
    tdesktop
    skypeforlinux
    zoom-us
  ];
}
