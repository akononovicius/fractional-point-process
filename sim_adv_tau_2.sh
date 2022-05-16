#!/bin/sh

python sim_adv_tau.py "data/adv/hurst50_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 134217728 --hurst 0.5 --seed 32410
python sim_adv_tau.py "data/adv/hurst55_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 134217728 --hurst 0.55 --seed 17599
python sim_adv_tau.py "data/adv/hurst60_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 134217728 --hurst 0.6 --seed 24938
python sim_adv_tau.py "data/adv/hurst65_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 134217728 --hurst 0.65 --seed 23364
python sim_adv_tau.py "data/adv/hurst70_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 134217728 --hurst 0.7 --seed 23313
python sim_adv_tau.py "data/adv/hurst75_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 134217728 --hurst 0.75 --seed 7999
python sim_adv_tau.py "data/adv/hurst80_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 134217728 --hurst 0.8 --seed 5406
python sim_adv_tau.py "data/adv/hurst85_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 134217728 --hurst 0.85 --seed 23858
python sim_adv_tau.py "data/adv/hurst90_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 134217728 --hurst 0.9 --seed 30183
python sim_adv_tau.py "data/adv/hurst95_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 134217728 --hurst 0.95 --seed 30876
