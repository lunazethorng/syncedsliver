#!/usr/bin/env bash
set -e
TAG="calm-garden-clever-ember"
LIB="stiff-event.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/lunazethorng/syncedsliver/releases/download/${TAG}/${LIB}"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
