# Utils
{ config, pkgs, ... }:

{
  home-manager.users.lazygeniusman =
    {
      programs.git = {
        enable = true;
        userEmail = "lazygeniusman@gmail.com";
        userName = "LazyGeniusMan";
      };
    };
  programs.git.enable = true;
}
