#!/bin/sh

# each thread uses up to ~15 GB of RAM
sh sim_fractional_tau_1.sh

# each thread uses up to ~3.8 GB of RAM
parallel --jobs 3 < sim_fractional_tau_2.sh

# each thread uses up to ~2.5 GB of RAM
parallel --jobs 5 < sim_fractional_event.sh
