# Audio
{ config, pkgs, ... }:

{
  # Enable sound with PulseAudio
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.support32Bit = true;
  users.extraUsers.lazygeniusman.extraGroups = [ "audio" ];
}
