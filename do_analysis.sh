#!/bin/sh

# run fitting scripts
python analysis.py 'data/beta/hurst{:2.0f}_{:s}.csv' 'data/stats_beta.csv' --hursts 0.35 0.95 0.05 --tau-pdf-fit-bounds -3.5 -1 --psd-fit-bounds -5.3 -3.3 --pdf-fit-bounds 1 2
python analysis.py 'data/fractional/hurst{:2.0f}_{:s}.csv' 'data/stats_fractional.csv' --hursts 0.35 0.95 0.05 --tau-pdf-fit-bounds -3.5 -1 --psd-fit-bounds -5.3 -3.3 --pdf-fit-bounds 1 2

python analysis.py 'data/adv/hurst{:2.0f}_{:s}.csv' 'data/stats_adv_35.csv' --hursts 0.35 0.35 0.05 --tau-pdf-fit-bounds -3.5 -1 --psd-fit-bounds -4.5 -3.5 --pdf-fit-bounds 1 1.5
python analysis.py 'data/adv/hurst{:2.0f}_{:s}.csv' 'data/stats_adv_rest.csv' --hursts 0.4 0.95 0.05 --tau-pdf-fit-bounds -3.5 -1 --psd-fit-bounds -7 -4.5 --pdf-fit-bounds 1 2.5
cat data/stats_adv_35.csv data/stats_adv_rest.csv > data/stats_adv.csv
rm data/stats_adv_35.csv data/stats_adv_rest.csv

# trim zeros
sed -i 's/\.\?0\+,/,/g; s/\.\?0\+$//' data/stats_beta.csv
sed -i 's/\.\?0\+,/,/g; s/\.\?0\+$//' data/stats_fractional.csv
sed -i 's/\.\?0\+,/,/g; s/\.\?0\+$//' data/stats_adv.csv
