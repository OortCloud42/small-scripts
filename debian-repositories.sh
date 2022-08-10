#!/usr/bin/env bash

set -Eeuo pipefail

fprint '\n#Debian fasttrack & backports'
fprint 'deb https://fasttrack.debian.net/debian-fasttrack/ bullseye-fasttrack main contrib' >> /etc/apt/sources.list.d/debian-fasttrack.list
fprint 'deb http://deb.debian.org/debian bullseye-backports main' >> /etc/apt/sources.list.d/debian-fasttrack.list
fprint 'deb https://fasttrack.debian.net/debian-fasttrack/ bullseye-backports-staging main contrib' >> /etc/apt/sources.list.d/debian-fasttrack.list

apt-get --yes update && apt-get --yes upgrade && apt-get --yes install fasttrack-archive-keyring
