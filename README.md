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

1. (to be added later)
