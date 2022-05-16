#!/bin/sh

python sim_beta_event.py "data/beta/hurst35_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.35 --seed 7769
python sim_beta_event.py "data/beta/hurst40_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.4 --seed 4179
python sim_beta_event.py "data/beta/hurst45_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.45 --seed 31329
python sim_beta_event.py "data/beta/hurst50_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.5 --seed 27410
python sim_beta_event.py "data/beta/hurst55_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.55 --seed 16359
python sim_beta_event.py "data/beta/hurst60_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.6 --seed 2704
python sim_beta_event.py "data/beta/hurst65_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.65 --seed 7313
python sim_beta_event.py "data/beta/hurst70_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.7 --seed 675
python sim_beta_event.py "data/beta/hurst75_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.75 --seed 22633
python sim_beta_event.py "data/beta/hurst80_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.8 --seed 8129
python sim_beta_event.py "data/beta/hurst85_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.85 --seed 331
python sim_beta_event.py "data/beta/hurst90_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.9 --seed 9190
python sim_beta_event.py "data/beta/hurst95_{:s}.csv" --n-batches 64 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.95 --seed 25707
