#!/usr/bin/env bash

set -Eeuo pipefail

printf '\n#Debian fasttrack & backports'
printf 'deb https://fasttrack.debian.net/debian-fasttrack/ bullseye-fasttrack main contrib' >> /etc/apt/sources.list.d/debian-fasttrack.list
printf 'deb http://deb.debian.org/debian bullseye-backports main' >> /etc/apt/sources.list.d/debian-fasttrack.list
printf 'deb https://fasttrack.debian.net/debian-fasttrack/ bullseye-backports-staging main contrib' >> /etc/apt/sources.list.d/debian-fasttrack.list

apt-get --yes update && apt-get --yes upgrade && apt-get --yes install fasttrack-archive-keyring
