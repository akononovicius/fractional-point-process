from typing import Iterator

import numpy as np


def tau_series_generator(
    *,
    sigma: float = 1e-3,
    hurst: float = 0.5,
    tau_0: float = 0.5,
    boundary: float = 1e-3,
    n_points: int = 262144,
    seed: int = -1,
) -> Iterator[float]:
    if seed < 0:
        np.random.seed()
        seed = np.random.randint(2**20)
    np.random.seed(seed)

    tau = tau_0

    mu = 3 / 2 - 3 / (5 * hurst) - 6 / (5 * (5 - 2 * hurst))

    alpha = 1 / hurst - 2
    gamma = alpha + 2 * mu

    drift_const = (sigma**2) / 2
    diff_const = sigma

    lb = boundary
    ub = 1 - boundary

    for _ in range(0, n_points):
        tau_mu = tau**mu
        drift_term = gamma / tau - alpha / (1 - tau)
        tau = tau + tau_mu * (
            drift_const * drift_term * tau_mu + diff_const * np.random.normal()
        )
        tau = max(min(tau, ub), lb)
        yield tau
