# Kvantum
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    libsForQt5.qtstyleplugin-kvantum
  ];
}