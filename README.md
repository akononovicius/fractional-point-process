# Analysis of point process driven by fractional Gaussian noise

This repository replicates numerical simulation conducted in [1]. Data
analysis script is also included, as well as figure generation scripts.

Main runable files follow `do_*.sh` naming convention. Model-specific
simulation files are named `sim_<model>.sh`, they reference other shell
scripts, which produce either inter-event time distributions (`*_tau_*.sh`
files) or event time series stats (`*_event.sh` files).

## Dependencies

Alongside Python (tested on 3.10, but should work in earlier versions, too),
this code depends on POSIX compliant shell (e.g., bash), [GNU
parallel](https://www.gnu.org/software/parallel/) utility and optionally
uses [Ghostscript](https://www.ghostscript.com/) to optimize produced PDF
figures.

## References

1. A. Kononovicius, R. Kazakevičius, B. Kaulakys. *Resemblance of the
   power-law scaling behavior of a non-Markovian and nonlinear point
   processes*. Chaos, Solitons & Fractals **162**: 112508 (2022). [doi:
   10.1016/j.chaos.2022.112508](https://doi.org/10.1016/j.chaos.2022.112508).
   [arXiv:2205.07563
   [cond-mat.stat-mech]](https://arxiv.org/abs/2205.07563).

