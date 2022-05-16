import numpy as np
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages

plt.rc("text", usetex=True)

data_frac = np.loadtxt("data/stats_fractional.csv", delimiter=",")
data_beta = np.loadtxt("data/stats_beta.csv", delimiter=",")
hursts = np.linspace(
    np.min([data_frac[:, 0], data_beta[:, 0]]),
    np.max([data_frac[:, 0], data_beta[:, 0]]),
)

with PdfPages("figs/tau_pdf.pdf") as pdfFile:
    fig = plt.figure(figsize=(3, 2))

    ax = plt.gca()
    ax.grid(visible=True, linestyle="--", dashes=(15, 15), c="#cccccc", lw=0.3)
    ax.get_yaxis().set_tick_params(direction="out")
    ax.get_xaxis().set_tick_params(direction="out")

    plt.xlabel(r"$H$")
    plt.ylabel(r"$\alpha$")

    plt.plot(data_frac[:, 0], data_frac[:, 1], "ro")
    plt.plot(data_beta[:, 0], data_beta[:, 1], "bs")
    plt.plot(hursts, 1 / hursts - 2, "k-")

    plt.tight_layout(w_pad=1, h_pad=1, pad=0.5)
    pdfFile.savefig(fig)
    plt.close()
