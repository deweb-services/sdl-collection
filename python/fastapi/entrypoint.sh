#!/usr/bin/env bash
set -e
git clone $REPO app
cd app
pip install -r requirements.txt
uvicorn app.main:app --port $PORT --host 0.0.0.0
