{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alsa-ucm-conf
    alsa-topology-conf
    alsa-lib
    alsa-utils
  ];
}
