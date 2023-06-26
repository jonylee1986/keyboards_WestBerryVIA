#!/bin/bash

set -e

rm -rf venv
python3 -m venv venv
source venv/bin/activate
pip install GitPython
python ./via_keymap_generator/generate_via_stack_json.py
deactivate
