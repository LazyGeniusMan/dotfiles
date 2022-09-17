{ config, pkgs, ... }:

{
  imports =
    [
      # Include the results of the hardware scan.
      ./hardware-configuration.nix

      # Base
      ./base/bootloader.nix
      ./base/kernel.nix
      ./base/filesystem.nix
      ./base/locale.nix
      ./base/networking.nix
      ./base/user.nix
      ./base/unfree.nix
      ./base/misc.nix
      <home-manager/nixos>
      ./base/home-manager.nix

      # Hardware
      ./hardware/audio/pipewire.nix
      #./hardware/audio/pulseaudio.nix
      ./hardware/ssd.nix
      ./hardware/touchpad.nix
      ./hardware/printer.nix
      ./hardware/bluetooth.nix
      ./hardware/fingerprint.nix
      # Kabylake ALC256
      #./hardware/audio/alc256/alc256.nix
      #./hardware/audio/alc256/firmware.nix
      #./hardware/audio/alc256/pkg.nix
      ./hardware/audio/alc256/modprobe.nix
      #./hardware/audio/alc256/topology.nix

      # Software
      ./software/terminal/zsh.nix
      ./software/font.nix
      ./software/util/git.nix
      ./software/util/misc.nix
      ./software/de/plasma.nix
      ./software/theme/kvantum.nix
      ./software/theme/nordic.nix
      ./software/icon/papirus-nordic.nix
      ./software/touchpad/fusuma.nix
      ./software/kde-gear.nix
      ./software/qemu.nix
      ./software/wine.nix
      ./software/productivity.nix
      ./software/communication.nix
      ./software/entertainment/mpv.nix
      ./software/entertainment/misc.nix
      ./software/container/docker.nix
      ./software/self-hosted.nix
      ./software/hotspot.nix
    ];

  nix.extraOptions = ''
      experimental-features = nix-command flakes
   '';
  #Custom Nix Config Path
  nix.nixPath = [
    "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos"
    "nixos-config=/home/lazygeniusman/nixos/configuration.nix"
    "/nix/var/nix/profiles/per-user/root/channels"
  ];

  #hardware.enableAllFirmware = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?

}
