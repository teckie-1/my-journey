#!/bin/bash

apt update && apt upgrade -y && apt autoremove -y && apt autoclean

for container in 100 101 102 104 106 107 110; do
  pct exec $container -- bash -c "apt update && apt upgrade -y"
  if pct exec $container -- test -f /var/run/reboot-required; then
    echo "Rebooting container $container"
    pct reboot $container

  fi
done

if [ -f /var/run/reboot-required ]; then
  echo "Rebooting abyss..."
  reboot
fi
