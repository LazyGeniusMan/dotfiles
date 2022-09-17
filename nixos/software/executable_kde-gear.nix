# KDE Gear
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Framework
    libsForQt5.baloo
    libsForQt5.kio
    libsForQt5.kparts

    # System
    libsForQt5.dolphin
    libsForQt5.dolphin-plugins
    libsForQt5.khelpcenter
    libsForQt5.ksystemlog

    # Utilities
    libsForQt5.ark
    libsForQt5.filelight
    libsForQt5.kate
    libsForQt5.kcalc
    #libsForQt5.kcharselect
    #libsForQt5.kdebugsettings
    #libsForQt5.kdf
    #libsForQt5.kdialog
    libsForQt5.keditbookmarks
    #libsForQt5.kfind
    #libsForQt5.kfloppy
    libsForQt5.kgpg
    libsForQt5.konsole
    krename
    #libsForQt5.kteatime
    libsForQt5.ktimer
    libsForQt5.kwalletmanager
    libsForQt5.plasma-browser-integration
    libsForQt5.print-manager
    libsForQt5.skanpage
    libsForQt5.yakuake

    # Network
    libsForQt5.kdeconnect-kde
    libsForQt5.kdenetwork-filesharing
    #libsForQt5.kget
    libsForQt5.kio-extras
    kio-fuse
    libsForQt5.kio-gdrive
    #libsForQt5.konqueror
    libsForQt5.konversation
    #libsForQt5.krdc
    #libsForQt5.krfb
    #libsForQt5.ktorrent

    # Telepathy
    libsForQt5.kaccounts-providers
    libsForQt5.kaccounts-integration

    # PIM
    libsForQt5.akonadi
    libsForQt5.akonadi-calendar
    libsForQt5.akonadi-calendar-tools
    libsForQt5.akonadi-contacts
    libsForQt5.akonadi-import-wizard
    libsForQt5.akonadi-mime
    libsForQt5.akonadi-notes
    libsForQt5.akonadi-search
    libsForQt5.akonadiconsole
    libsForQt5.akregator
    libsForQt5.kaddressbook
    libsForQt5.kalarm
    libsForQt5.kalendar
    libsForQt5.kdepim-addons
    #libsForQt5.kitinerary
    libsForQt5.kleopatra
    libsForQt5.kmail
    libsForQt5.knotes
    libsForQt5.kontact
    libsForQt5.korganizer
    libsForQt5.zanshin

    # Graphcics
    digikam
    libsForQt5.gwenview
    libsForQt5.kcolorchooser
    libsForQt5.kdegraphics-mobipocket
    libsForQt5.kdegraphics-thumbnailers
    #libsForQt5.kolourpaint
    #libsForQt5.kruler
    libsForQt5.okular
    libsForQt5.spectacle
    libsForQt5.skanlite

    # Multimedia
    #libsForQt5.dragon
    libsForQt5.elisa
    libsForQt5.ffmpegthumbs
    haruna
    libsForQt5.kamoso
    libsForQt5.kdenlive
    libsForQt5.kmix
    libsForQt5.kwave

    # SDK
    libsForQt5.umbrello
  ];
  #builtins.filter lib.isDerivation (builtins.attrValues plasma5Packages.kdeGear);
  # System
  programs.partition-manager.enable = true;

  # Multimedia
  #programs.k3b.enable = true;
}
