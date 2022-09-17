# Networking
{ config, pkgs, ... }:

{
  # Hostname
  networking.hostName = "nixos";
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;
  users.extraUsers.lazygeniusman.extraGroups = [ "networkmanager" ];

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Allow IP Range
  networking.firewall.extraCommands = "iptables -A INPUT -s 192.168.1.0/24 -j ACCEPT";
}
