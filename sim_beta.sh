#!/bin/sh

# each thread uses up to ~2.5 GB of RAM
parallel --jobs 3 < sim_beta_tau_1.sh

# each thread uses up to ~0.7 GB of RAM
parallel --jobs 6 < sim_beta_tau_2.sh

# each thread uses up to ~1.5 GB of RAM
parallel --jobs 6 < sim_beta_event.sh
