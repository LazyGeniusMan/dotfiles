# Wine
{ config, pkgs, ... }:

{
  virtualisation.libvirtd.enable = true;
  programs.dconf.enable = true;
  environment.systemPackages = with pkgs; [ virt-manager ];
  boot.extraModprobeConfig = "options kvm_intel nested=1";
  users.users.lazygeniusman.extraGroups = [ "libvirtd" ];
}
