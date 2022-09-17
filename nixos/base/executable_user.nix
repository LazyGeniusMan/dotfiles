# Users
{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lazygeniusman = {
    isNormalUser = true;
    description = "Andriyansyah Nurrachman";
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      # Local User Packages
    ];
  };
}
