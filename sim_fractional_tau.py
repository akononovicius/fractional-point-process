import numpy as np
import typer

from sim_utils import simulate_tau_pdf
from taudiff import fractional_model


def main(
    out_filename: str,
    *,
    sigma: float = 1e-4,
    boundary: float = 1e-4,
    hurst: float = 0.5,
    n_tau_points: int = 67108864,
    seed: int = -1,
):
    tau_pdf = simulate_tau_pdf(
        fractional_model,
        sigma=sigma,
        boundary=boundary,
        hurst=hurst,
        n_tau_points=n_tau_points,
        fold_mid=True,
        seed=seed,
    )

    np.savetxt(out_filename, tau_pdf, fmt="%.4f", delimiter=",")


if __name__ == "__main__":
    typer.run(main)
