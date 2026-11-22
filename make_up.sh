#!/usr/bin/env bash
set -e
LIB="storm-field.a"
TAG="golden-delta-golden-badger"
REPO="djdadhuli/goloopedleaflet"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
