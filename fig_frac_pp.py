import matplotlib.pyplot as plt
import numpy as np
from matplotlib.backends.backend_pdf import PdfPages

plt.rc("text", usetex=True)

hursts = np.array([0.35, 0.5, 0.8])
curve_styles = ["r:", "g-", "b--"]
fN_template = "data/fractional/hurst{:.0f}_{:s}.csv"

with PdfPages("figs/frac_pp.pdf") as pdfFile:
    fig = plt.figure(figsize=(9, 2))

    plt.subplot(131)
    plt.loglog()
    plt.ylabel(r"$p(\tau)$")
    plt.xlabel(r"$\tau$")

    ax = plt.gca()
    plt.minorticks_off()
    ax.grid(visible=True, linestyle=":", dashes=(15, 15), c="#bbbbbb", lw=0.2)
    ax.get_yaxis().set_tick_params(direction="out")
    ax.get_xaxis().set_tick_params(direction="out")

    for hurst_idx, hurst in enumerate(hursts):
        data = 10 ** np.loadtxt(
            fN_template.format(hurst * 100, "tau_log_pdf"), delimiter=","
        )
        plt.plot(data[1:, 0], data[1:, 1], curve_styles[hurst_idx])

    plt.text(
        0.95,
        0.9,
        "(a)",
        horizontalalignment="right",
        verticalalignment="center",
        transform=ax.transAxes,
    )

    plt.subplot(132)
    plt.loglog()

    plt.ylim([3e-10, 3e0])
    plt.yticks([1e-9, 1e-6, 1e-3, 1e0])
    plt.ylabel(r"$p(N)$")

    plt.xticks([1e0, 1e1, 1e2, 1e3])
    plt.xlabel(r"$N$")

    ax = plt.gca()
    plt.minorticks_off()
    ax.grid(visible=True, linestyle=":", dashes=(15, 15), c="#bbbbbb", lw=0.2)
    ax.get_yaxis().set_tick_params(direction="out")
    ax.get_xaxis().set_tick_params(direction="out")

    for hurst_idx, hurst in enumerate(hursts):
        data = np.loadtxt(fN_template.format(hurst * 100, "pdf"), delimiter=",")
        data = 10 ** data
        plt.plot(data[:, 0], data[:, 1], curve_styles[hurst_idx])

    plt.text(
        0.95,
        0.9,
        "(b)",
        horizontalalignment="right",
        verticalalignment="center",
        transform=ax.transAxes,
    )

    plt.subplot(133)
    plt.loglog()

    plt.ylim([1e-1, 1e7])
    plt.yticks([1e0, 1e2, 1e4, 1e6])
    plt.ylabel(r"$S(f)$")

    plt.xlim([1e-7, 5e-1])
    plt.xticks([1e-7, 1e-5, 1e-3, 1e-1])
    plt.xlabel(r"$f$")

    ax = plt.gca()
    plt.minorticks_off()
    ax.grid(visible=True, linestyle=":", dashes=(15, 15), c="#bbbbbb", lw=0.2)
    ax.get_yaxis().set_tick_params(direction="out")
    ax.get_xaxis().set_tick_params(direction="out")

    for hurst_idx, hurst in enumerate(hursts):
        data = np.loadtxt(fN_template.format(hurst * 100, "psd"), delimiter=",")
        data = 10 ** data
        plt.plot(data[:, 0], data[:, 1], curve_styles[hurst_idx])

    plt.text(
        0.95,
        0.9,
        "(c)",
        horizontalalignment="right",
        verticalalignment="center",
        transform=ax.transAxes,
    )

    plt.tight_layout(w_pad=1, h_pad=1, pad=0.5)
    pdfFile.savefig(fig, bbox_inches="tight", pad_inches=0.05)
    plt.close()
