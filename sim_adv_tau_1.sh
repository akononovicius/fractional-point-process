#!/bin/sh

python sim_adv_tau.py "data/adv/hurst35_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 268435456 --hurst 0.35 --seed 29084
python sim_adv_tau.py "data/adv/hurst40_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 268435456 --hurst 0.4 --seed 4343
python sim_adv_tau.py "data/adv/hurst45_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 268435456 --hurst 0.45 --seed 27279
