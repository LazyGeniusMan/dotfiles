# Utils
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    mpv
  ];
  home-manager.users.lazygeniusman = {
    xdg.configFile."mpv/mpv.conf".text = ''
    #OSD
    osd-playing-msg=''${filename}
    osd-font-size=24
    osd-on-seek=msg-bar
    ##Frame
    #osd-msg1=''${playback-time/full} / ''${duration} (''${percent-pos}%)\nframe: ''${estimated-frame-number} / ''${estimated-frame-count}
    
    #Preferred Audio and Subtitle Languange
    alang=jpn
    slang=eng
    
    #Screenshot
    screenshot-format=png
    screenshot-high-bit-depth=yes
    screenshot-template="%f_%wH-%wM-%wS-%wT"
    screenshot-directory=~/Pictures
    screenshot-png-compression=7
    
    #Window
    title=''${filename}
    
    cache=yes
    demuxer-max-bytes=512M
    demuxer-max-back-bytes=128M
    cache-pause=no
    cache-on-disk=no
    '';

    xdg.configFile."mpv/mpv.input".text = ''
    #KEYBINDS                   COMMAND                     AMOUNT

    ###Audio Control
    CTRL+a                      cycle audio
    SHIFT+a                     add audio-delay             +0.100
    ALT+a                       add audio-delay             -0.100

    ###OSD
    s                           show-progress
    p                           script-message osc-playlist

    ###Playback Control
    SPACE                       cycle pause
    LEFT                        seek                        -5
    RIGHT                       seek                        +5
    ALT+LEFT                    seek                        -1
    ALT+RIGHT                   seek                        +1
    SHIFT+LEFT                  seek                        -30
    SHIFT+RIGHT                 seek                        +30
    CTRL+LEFT                   frame-back-step
    CTRL+RIGHT                  frame-step
    PGUP                        add chapter                 -1
    PGDWN                       add chapter                 +1
    SHIFT+.                     playlist-next
    SHIFT+,                     playlist-prev

    ###Player Control
    ENTER                       cycle fullscreen
    ESC                         set fullscreen no
    ALT+ESC                     quit

    ###Screenshot
    c                           screenshot video
    SHIFT+c                     screenshot

    ###Subtitle Control
    CTRL+s                      cycle sub down
    SHIFT+s                     add sub-delay               +0.1
    ALT+s                       add sub-delay               -0.1

    ###Volume Control
    UP                          add volume                  +2
    DOWN                        add volume                  -2
    m                           cycle mute
    '';
    
    xdg.configFile."mpv/script-opts/osc.conf".text = ''
    layout=box
    seekbarstyle=knob
    title="''${filename}"
    '';
  };
}
