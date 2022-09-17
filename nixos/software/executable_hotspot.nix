# Hotspot
{ config, pkgs, ... }:

{
  #services.create_ap = {
  #  enable = true;
  #  settings = {
  #    INTERNET_IFACE = "wlp2s0";
  #    WIFI_IFACE = "wlp2s0";
  #    SSID = "hotspot";
  #    PASSPHRASE = "password";
  #  };
  #};
  environment.systemPackages = with pkgs; [
    linux-wifi-hotspot
  ];
}
