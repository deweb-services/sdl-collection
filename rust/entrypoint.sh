#!/usr/bin/env bash
set -e
cargo new --bin $NAME
git clone $REPO app
cd app
cargo build --release \
    && rm src/*.rs target/release/deps/"${NAME}"*
cargo build --release
cp target/release/"${NAME}" .
./"${NAME}"
