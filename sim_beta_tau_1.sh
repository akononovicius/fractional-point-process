#!/bin/sh

python sim_beta_tau.py "data/beta/hurst35_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 268435456 --hurst 0.35 --seed 28815
python sim_beta_tau.py "data/beta/hurst40_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 268435456 --hurst 0.4 --seed 14668
python sim_beta_tau.py "data/beta/hurst45_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 268435456 --hurst 0.45 --seed 15169
