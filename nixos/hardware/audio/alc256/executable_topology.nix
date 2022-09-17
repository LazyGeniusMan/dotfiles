{ config, pkgs, ... }:

let alsa-topology = pkgs.alsa-topology-conf;
in
{
  hardware.firmware = [
    (pkgs.runCommand "alsa-hda-dsp-topology" { nativeBuildInputs = [ pkgs.alsa-utils ]; } ''
      mkdir -p $out/lib/firmware
      alsatplg -c ${alsa-topology}/share/alsa/topology/hda-dsp/skl_hda_dsp_generic-tplg.conf -o $out/lib/firmware/skl_hda_dsp_generic-tplg.bin
    '')
  ];

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
}
