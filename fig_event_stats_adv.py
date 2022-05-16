import matplotlib.pyplot as plt
import numpy as np
from matplotlib.backends.backend_pdf import PdfPages

plt.rc("text", usetex=True)

data_frac = np.loadtxt("data/stats_fractional.csv", delimiter=",")
data_adv = np.loadtxt("data/stats_adv.csv", delimiter=",")
hursts = np.linspace(
    np.min([*data_frac[:, 0], *data_adv[:, 0]]),
    np.max([*data_frac[:, 0], *data_adv[:, 0]]),
)

with PdfPages("figs/event_stats_adv.pdf") as pdfFile:
    fig = plt.figure(figsize=(6, 2))

    # PDF lambda vs Hurst
    plt.subplot(121)
    ax = plt.gca()
    ax.grid(visible=True, linestyle="--", dashes=(15, 15), c="#cccccc", lw=0.3)
    ax.get_yaxis().set_tick_params(direction="out")
    ax.get_xaxis().set_tick_params(direction="out")

    plt.xlabel(r"$H$")
    plt.ylabel(r"$\lambda$")

    plt.plot(data_frac[:, 0], data_frac[:, 5], "ro")
    plt.plot(data_adv[:, 0], data_adv[:, 5], "bs")
    plt.plot(hursts, 1 / hursts + 1, "k-")

    plt.text(
        0.95,
        0.9,
        "(a)",
        horizontalalignment="right",
        verticalalignment="center",
        transform=ax.transAxes,
    )

    # PSD beta vs Hurst
    plt.subplot(122)
    ax = plt.gca()
    ax.grid(visible=True, linestyle="--", dashes=(15, 15), c="#cccccc", lw=0.3)
    ax.get_yaxis().set_tick_params(direction="out")
    ax.get_xaxis().set_tick_params(direction="out")

    plt.xlabel(r"$H$")
    plt.ylabel(r"$\beta$")

    plt.plot(data_frac[:, 0], data_frac[:, 3], "ro")
    plt.plot(data_adv[:, 0], data_adv[:, 3], "bs")
    plt.plot(
        hursts, 1 - 4 / 3 * (hursts - 1 / 2) + 2 / 3 * ((hursts - 1 / 2) ** 2), "k-"
    )

    plt.text(
        0.95,
        0.9,
        "(b)",
        horizontalalignment="right",
        verticalalignment="center",
        transform=ax.transAxes,
    )

    plt.tight_layout(w_pad=1, h_pad=1, pad=0.5)
    pdfFile.savefig(fig)
    plt.close()
