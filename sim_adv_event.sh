#!/bin/sh

python sim_adv_event.py "data/adv/hurst35_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-3 --boundary 1e-3 --hurst 0.35 --seed 12138
python sim_adv_event.py "data/adv/hurst40_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.4 --seed 16737
python sim_adv_event.py "data/adv/hurst45_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.45 --seed 22621
python sim_adv_event.py "data/adv/hurst50_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.5 --seed 26024
python sim_adv_event.py "data/adv/hurst55_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.55 --seed 3761
python sim_adv_event.py "data/adv/hurst60_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.6 --seed 26451
python sim_adv_event.py "data/adv/hurst65_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.65 --seed 21566
python sim_adv_event.py "data/adv/hurst70_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.7 --seed 30280
python sim_adv_event.py "data/adv/hurst75_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.75 --seed 11706
python sim_adv_event.py "data/adv/hurst80_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.8 --seed 29248
python sim_adv_event.py "data/adv/hurst85_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.85 --seed 27135
python sim_adv_event.py "data/adv/hurst90_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.9 --seed 25061
python sim_adv_event.py "data/adv/hurst95_{:s}.csv" --n-batches 256 --n-batch-points 33554432 --sigma 1e-4 --boundary 1e-4 --hurst 0.95 --seed 28840
