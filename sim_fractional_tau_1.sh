#!/bin/sh

python sim_fractional_tau.py "data/fractional/hurst35_tau_log_pdf.csv" --sigma 1e-3 --boundary 1e-3 --n-tau-points 268435456 --hurst 0.35 --seed 18626
python sim_fractional_tau.py "data/fractional/hurst40_tau_log_pdf.csv" --sigma 1e-3 --boundary 1e-3 --n-tau-points 268435456 --hurst 0.4 --seed 32346
python sim_fractional_tau.py "data/fractional/hurst45_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 268435456 --hurst 0.45 --seed 8515
