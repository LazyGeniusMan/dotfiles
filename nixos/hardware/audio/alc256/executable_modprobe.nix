{ config, pkgs, ... }:

{
  #boot.extraModprobeConfig = "options snd-intel-dspcfg dsp_driver=2\n";
  #boot.extraModprobeConfig = "options snd-intel-dspcfg dsp_driver=3\nblacklist snd-hda-intel\noptions snd slots=snd_soc_skl_hda_dsp";
  #boot.extraModprobeConfig = "options snd-hda-intel model=dell-headset-multi\n";
  #boot.extraModprobeConfig = "options snd-hda-intel model=headset-mic\n";
  boot.extraModprobeConfig = "options snd-intel-dspcfg dsp_driver=1\n";
}
