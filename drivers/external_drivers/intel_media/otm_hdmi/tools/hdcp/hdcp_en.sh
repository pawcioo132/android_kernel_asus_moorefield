#!/bin/bash

echo "HDCP Enable Helper Script"
echo "Pushing helper module..."
adb push hdcp.ko /data/
echo "Running module"
adb shell insmod /data/hdcp.ko option="enable"
echo "Removing Module"
adb shell rmmod hdcp.ko
echo "Done: unplug replug HDMI cable"
echo "Look for HDCP messages in dmesg"
echo "Use: adb shell dmesg | grep \"hdcp\""
