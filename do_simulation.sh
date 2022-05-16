#!/bin/sh

# run simulations of the models
find . -maxdepth 1 -regex '\(\.\/\)?sim_[^_]+\.sh' \
    -exec echo {} \;
