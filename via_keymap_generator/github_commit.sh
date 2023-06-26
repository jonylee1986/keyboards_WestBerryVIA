#!/bin/bash

set -e

git clone https://$GIT_TOKEN@github.com/WestBerryVIA/via-keymap-precompiled.git
cd via-keymap-precompiled
git config user.email "vial@westberry.com"
git config user.name "Vial Bot"
cp ../via_keyboard_stack.json .
git add .
git commit -m "Update at $(date "+%Y-%m-%d %H:%M:%S")" || true
git push
