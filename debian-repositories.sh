#!/usr/bin/env bash

set -Eeuo pipefail

apt-get --yes install debian-keyring
apt-get --yes update
apt-get --yes install fasttrack-archive-keyring

echo /dev/null > /etc/apt/sources.list.d/debian-fasttrack.list

printf '\n#Debian fasttrack & backports' >> /etc/apt/sources.list.d/debian-fasttrack.list
printf '\ndeb https://fasttrack.debian.net/debian-fasttrack/ bullseye-fasttrack main contrib' >> /etc/apt/sources.list.d/debian-fasttrack.list
printf '\ndeb http://deb.debian.org/debian bullseye-backports main' >> /etc/apt/sources.list.d/debian-fasttrack.list
printf '\ndeb https://fasttrack.debian.net/debian-fasttrack/ bullseye-backports-staging main contrib' >> /etc/apt/sources.list.d/debian-fasttrack.list

apt-get --yes update
