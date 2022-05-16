import numpy as np
import typer

from sim_utils import simulate_event_stats
from taudiff import beta_model


def main(
    out_filename_template: str,
    *,
    sigma: float = 1e-4,
    boundary: float = 1e-4,
    hurst: float = 0.5,
    n_batches: int = 64,
    n_batch_points: int = 1048576,
    seed: int = -1,
):
    beta_pdf, beta_psd = simulate_event_stats(
        beta_model,
        sigma=sigma,
        hurst=hurst,
        boundary=boundary,
        n_batch_points=n_batch_points,
        seed=seed,
    )

    out_filename = out_filename_template.format("pdf")
    np.savetxt(out_filename, beta_pdf, fmt="%.4f", delimiter=",")

    out_filename = out_filename_template.format("psd")
    np.savetxt(out_filename, beta_psd, fmt="%.4f", delimiter=",")


if __name__ == "__main__":
    typer.run(main)
