# Productivity
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    libreoffice-qt
    firefox
    google-chrome
    vscode-fhs
    gimp
    inkscape
  ];
}
