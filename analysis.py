from typing import Tuple

import numpy as np
import typer


def main(
    in_filename_template: str,
    out_filename: str,
    *,
    hursts: Tuple[float, float, float] = (0.5, 0.95, 0.05),
    tau_pdf_fit_bounds: Tuple[float, float] = (-3.5, -1),
    psd_fit_bounds: Tuple[float, float] = (-5.3, -3.3),
    pdf_fit_bounds: Tuple[float, float] = (1, 2),
):
    hurst_indices = np.arange(hursts[0], hursts[1] + hursts[2] / 2, hursts[2])
    alphas = np.full(hurst_indices.shape, np.nan)
    alphas_err = np.full(hurst_indices.shape, np.nan)
    betas = np.full(hurst_indices.shape, np.nan)
    betas_err = np.full(hurst_indices.shape, np.nan)
    las = np.full(hurst_indices.shape, np.nan)
    las_err = np.full(hurst_indices.shape, np.nan)

    for hurst_idx, hurst in enumerate(hurst_indices):
        hurst_int = hurst * 100

        in_file = in_filename_template.format(hurst_int, "tau_log_pdf")
        data = np.loadtxt(in_file, delimiter=",")
        mask = (tau_pdf_fit_bounds[0] <= data[:, 0]) & (
            data[:, 0] <= tau_pdf_fit_bounds[1]
        )
        fit_coeffs, cov = np.polyfit(data[mask, 0], data[mask, 1], 1, cov=True)
        alphas[hurst_idx] = fit_coeffs[0]
        alphas_err[hurst_idx] = np.sqrt(cov[0, 0])

        in_file = in_filename_template.format(hurst_int, "psd")
        data = np.loadtxt(in_file, delimiter=",")
        mask = (psd_fit_bounds[0] <= data[:, 0]) & (data[:, 0] <= psd_fit_bounds[1])
        fit_coeffs, cov = np.polyfit(data[mask, 0], data[mask, 1], 1, cov=True)
        betas[hurst_idx] = fit_coeffs[0]
        betas_err[hurst_idx] = np.sqrt(cov[0, 0])

        in_file = in_filename_template.format(hurst_int, "pdf")
        data = np.loadtxt(in_file, delimiter=",")
        mask = (pdf_fit_bounds[0] <= data[:, 0]) & (data[:, 0] <= pdf_fit_bounds[1])
        fit_coeffs, cov = np.polyfit(data[mask, 0], data[mask, 1], 1, cov=True)
        las[hurst_idx] = fit_coeffs[0]
        las_err[hurst_idx] = np.sqrt(cov[0, 0])

    data = np.array(
        [hurst_indices, alphas, alphas_err, -betas, betas_err, -las, las_err]
    ).T
    np.savetxt(out_filename, data, delimiter=",", fmt="%.4f")


if __name__ == "__main__":
    typer.run(main)
