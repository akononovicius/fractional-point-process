#!/bin/sh

python sim_fractional_tau.py "data/fractional/hurst50_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.5 --seed 5311
python sim_fractional_tau.py "data/fractional/hurst55_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.55 --seed 25864
python sim_fractional_tau.py "data/fractional/hurst60_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.6 --seed 18470
python sim_fractional_tau.py "data/fractional/hurst65_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.65 --seed 24607
python sim_fractional_tau.py "data/fractional/hurst70_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.7 --seed 20327
python sim_fractional_tau.py "data/fractional/hurst75_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.75 --seed 5803
python sim_fractional_tau.py "data/fractional/hurst80_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.8 --seed 22197
python sim_fractional_tau.py "data/fractional/hurst85_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.85 --seed 30776
python sim_fractional_tau.py "data/fractional/hurst90_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.9 --seed 20643
python sim_fractional_tau.py "data/fractional/hurst95_tau_log_pdf.csv" --sigma 1e-4 --boundary 1e-4 --n-tau-points 67108864 --hurst 0.95 --seed 5101
