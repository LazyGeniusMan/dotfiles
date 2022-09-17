{ config, pkgs, ... }:

let alsa-topology = pkgs.alsa-topology-conf;
in
{
  # Add necessary packages
  environment.systemPackages = with pkgs; [
    alsa-ucm-conf
    alsa-topology-conf
    alsa-lib
    alsa-utils
  ];

  # Compile ALSA Topology
  hardware.firmware = [
    (pkgs.runCommand "alsa-hda-dsp-topology" { nativeBuildInputs = [ pkgs.alsa-utils ]; } ''
      mkdir -p $out/lib/firmware
      alsatplg -c ${alsa-topology}/share/alsa/topology/hda-dsp/skl_hda_dsp_generic-tplg.conf -o $out/lib/firmware/skl_hda_dsp_generic-tplg.bin
    '')
    pkgs.alsa-firmware
    pkgs.sof-firmware
  ];
  
  # Replace default DSP Firmware
  system.replaceRuntimeDependencies = [
    {
      original = pkgs.firmwareLinuxNonfree;
      replacement = pkgs.firmwareLinuxNonfree.overrideAttrs (super: {
        postInstall = ''
          cd $out/lib/firmware/intel/
          rm dsp_fw_release.bin
          ln -s dsp_fw_kbl_v3420.bin dsp_fw_release.bin
        '';
      });
    }
  ];
  
  # Add modprobe
  boot.extraModprobeConfig = "options snd-intel-dspcfg dsp_driver=1\n";
  #boot.extraModprobeConfig = "options snd-intel-dspcfg dsp_driver=3\nblacklist snd-hda-intel\noptions snd slots=snd_soc_skl_hda_dsp";
}