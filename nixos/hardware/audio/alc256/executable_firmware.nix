{ config, pkgs, ... }:

{
  hardware.firmware = with pkgs; [
    alsa-firmware
    sof-firmware
  ];
}
