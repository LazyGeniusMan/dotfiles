# Touchpad Support
{ config, pkgs, ... }:

{
  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;
}