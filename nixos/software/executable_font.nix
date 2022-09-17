# Font
{ config, pkgs, ... }:

{
  fonts.fonts = with pkgs; [
    nerdfonts
    corefonts
    vistafonts
  ];
}
