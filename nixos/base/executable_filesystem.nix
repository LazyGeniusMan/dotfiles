# Common Filesystems
{ config, pkgs, ... }:

{
  boot.supportedFilesystems = [
    "btrfs"
    "reiserfs"
    "vfat"
    "f2fs"
    "xfs"
    #"zfs"
    "ntfs"
    "cifs"
  ];
}
