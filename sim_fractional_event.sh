#!/bin/sh

python sim_fractional_event.py "data/fractional/hurst35_{:s}.csv" --n-batches 1024 --n-batch-points 16777216 --sigma 1e-3 --boundary 1e-3 --hurst 0.35 --seed 14378
python sim_fractional_event.py "data/fractional/hurst40_{:s}.csv" --n-batches 128 --n-batch-points 16777216 --sigma 1e-3 --boundary 1e-3 --hurst 0.4 --seed 4861
python sim_fractional_event.py "data/fractional/hurst45_{:s}.csv" --n-batches 128 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.45 --seed 24416
python sim_fractional_event.py "data/fractional/hurst50_{:s}.csv" --n-batches 128 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.5 --seed 3544
python sim_fractional_event.py "data/fractional/hurst55_{:s}.csv" --n-batches 128 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.55 --seed 6667
python sim_fractional_event.py "data/fractional/hurst60_{:s}.csv" --n-batches 128 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.6 --seed 1140
python sim_fractional_event.py "data/fractional/hurst65_{:s}.csv" --n-batches 128 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.65 --seed 20631
python sim_fractional_event.py "data/fractional/hurst70_{:s}.csv" --n-batches 128 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.7 --seed 12352
python sim_fractional_event.py "data/fractional/hurst75_{:s}.csv" --n-batches 128 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.75 --seed 11374
python sim_fractional_event.py "data/fractional/hurst80_{:s}.csv" --n-batches 128 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.8 --seed 11598
python sim_fractional_event.py "data/fractional/hurst85_{:s}.csv" --n-batches 128 --n-batch-points 16777216 --sigma 1e-4 --boundary 1e-4 --hurst 0.85 --seed 2802
python sim_fractional_event.py "data/fractional/hurst90_{:s}.csv" --n-batches 128 --n-batch-points 67108864 --sigma 1e-4 --boundary 1e-4 --hurst 0.9 --seed 17407
python sim_fractional_event.py "data/fractional/hurst95_{:s}.csv" --n-batches 128 --n-batch-points 67108864 --sigma 1e-4 --boundary 1e-4 --hurst 0.95 --seed 26828
