# zsh
{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    interactiveShellInit = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      source /home/lazygeniusman/.p10k.zsh
    '';
  };
  environment.systemPackages = with pkgs; [
    zsh-powerlevel10k
  ];
  fonts.fonts = with pkgs; [
    meslo-lgs-nf
  ];
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [
    zsh
  ];
}
