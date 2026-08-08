1. Wi-Fi not detected → Intel Wi-Fi hardware was detected but the required firmware was missing → Installed `iwlwifi-dvm-firmware` and `iwlwifi-mvm-firmware` with `sudo dnf install iwlwifi-dvm-firmware iwlwifi-mvm-firmware` → Wi-Fi started working.

2. Audio not working → Intel 500 Series HD Audio was using the wrong DSP driver → Added `options snd-intel-dspcfg dsp_driver=1` to `/etc/modprobe.d/intel-audio.conf`, rebooted, and audio started working.

3. Greeter not working → `greetd` and Noctalia Greeter were not correctly integrated into the graphical login flow → Checked `systemctl`, `journalctl`, `/etc/greetd/`, and the `graphical.target` dependency → fixed the greetd/Noctalia Greeter configuration.