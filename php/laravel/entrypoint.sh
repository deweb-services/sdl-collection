#!/usr/bin/env bash
set -e
git clone $REPO app
cd app
php artisan serve --host 0.0.0.0