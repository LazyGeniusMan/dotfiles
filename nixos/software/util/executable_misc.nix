# Utils
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rnix-lsp
    nixpkgs-fmt
    nix-index
    wget
    curl
    ripgrep
    vim
    micro
    pciutils
    usbutils
    pavucontrol
    efibootmgr
    #soundwireserver
    android-tools
    scrcpy
    openfortivpn
    openconnect
    obs-studio
    dbeaver
    gallery-dl
    protonvpn-gui
    #pdfarranger
  ];
  programs.droidcam.enable = true;
}
