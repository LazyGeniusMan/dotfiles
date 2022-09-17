# Fusuma
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    fusuma
    coreutils
  ];
  users.extraUsers.lazygeniusman.extraGroups = [ "input" ];
  home-manager.users.lazygeniusman = {
    services.fusuma = {
      enable = true;
      settings = {
        swipe = {
          "3" = {
            left = {
              sendkey = "LEFTMETA+LEFT";
            };
            right = {
              sendkey = "LEFTMETA+RIGHT";
            };
            up = {
              sendkey = "LEFTMETA+W";
              keypress = {
                "LEFTSHIFT" = {
                  sendkey = "LEFTCTRL+F10";
                };
              };
            };
            down = {
              sendkey = "LEFTMETA+LEFTALT+DOWN";
              keypress = {
                "LEFTSHIFT" = {
                  sendkey = "LEFTMETA+D";
                };
              };
            };
          };
          "4" = {
            up = {
              sendkey = "LEFTCTRL+SCROLLUP";
              threshold = 0.1;
              interval = 0.2;
            };
            down = {
              sendkey = "LEFTCTRL+SCROLLDOWN";
              threshold = 0.1;
              interval = 0.2;
            };
          };
        };
        hold = {
          "3" = {
            sendkey = "LEFTALT+F4";
          };
        };
        threshold = {
          swipe = 0.5;
        };
        interval = {
          swipe = 0.5;
        };
        plugin = {
          inputs = {
            libinput_command_input = {
              show-keycodes = true;
              enable-tap = true;
              enable-dwt = true;
              verbose = true;
            };
          };
        };
      };
    };
  };
}
