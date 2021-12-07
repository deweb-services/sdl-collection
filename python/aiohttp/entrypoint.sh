#!/usr/bin/env bash
set -e
git clone $REPO app
cd app
pip install -r requirements.txt
python -u server.py