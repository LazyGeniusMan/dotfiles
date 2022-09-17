# Docker  
{ config, pkgs, ... }:

{
  virtualisation.docker.enable = true;
  environment.systemPackages = with pkgs; [
    docker-compose
  ];
  users.users.lazygeniusman.extraGroups = [ "docker" ];
}
