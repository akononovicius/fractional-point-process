#!/bin/sh

python sim_beta_tau.py "data/beta/hurst50_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.5 --seed 32136
python sim_beta_tau.py "data/beta/hurst55_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.55 --seed 780
python sim_beta_tau.py "data/beta/hurst60_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.6 --seed 27439
python sim_beta_tau.py "data/beta/hurst65_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.65 --seed 1182
python sim_beta_tau.py "data/beta/hurst70_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.7 --seed 8078
python sim_beta_tau.py "data/beta/hurst75_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.75 --seed 27977
python sim_beta_tau.py "data/beta/hurst80_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.8 --seed 8424
python sim_beta_tau.py "data/beta/hurst85_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.85 --seed 8635
python sim_beta_tau.py "data/beta/hurst90_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.9 --seed 28359
python sim_beta_tau.py "data/beta/hurst95_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.95 --seed 4112
