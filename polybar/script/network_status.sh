#!/bin/bash

if nmcli -t -f WIFI g | grep -q 'enabled'; then
  if nmcli -t -f DEVICE,STATE d | grep -q '^wlp3s0:connected\|^enp0s25:connected'; then
	echo "WiFi: Connected"
  else
	echo "WiFi: Disconnected"
  fi
else
  echo "WiFi: Disabled"
fi

