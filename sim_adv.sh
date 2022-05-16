#!/bin/sh

# each thread uses up to ~2.5 GB of RAM
parallel --jobs 3 < sim_adv_tau_1.sh

# each thread uses up to ~1.5 GB of RAM
parallel --jobs 6 < sim_adv_tau_2.sh

# each thread uses up to ~3.0 GB of RAM
parallel --jobs 4 < sim_adv_event.sh
