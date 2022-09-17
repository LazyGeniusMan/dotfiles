# Nordic
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nordic
  ];
  services.xserver.displayManager.sddm.theme = "Nordic";
}