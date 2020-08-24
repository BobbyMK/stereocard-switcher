#!/usr/bin/bash
STEREO_STATUS=`pacmd list-sinks | grep -i alsa_output.pci-0000_00_1b | cut -c 38-50`

if [ $STEREO_STATUS = "analog-stereo" ]
then
	pactl set-card-profile 0 output:hdmi-stereo+input:analog-stereo
else
	pactl set-card-profile 0 output:analog-stereo+input:analog-stereo
fi
