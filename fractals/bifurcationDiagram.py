###############################################################################
#
# File: bifurcationDiagram.py
#
# Description:
# Classical bifurcation diagram from a tutorial on YouTube.
#
# Source:   https://youtu.be/1ApX-OHGOdw
#
# Run the file in the python terminal (tested on linux) by:
#     python <fileName.py>
#
# Date: April 11, 2023
#
#------------------------------------------------------------------------------


import numpy as np
import matplotlib.pyplot as plt

# Create a linear spaced vector of 1000 points between 1 and 4
rs = np.linspace(1, 4, 1000)

N = 500
x = np.zeros(N)
x[0] = 0.5
endcap = np.arange(round(N*0.9),N)

for ri in range(len(rs)):

    for n in range(N-1):
        # Traditional bifurcation diagram
        x[n+1] = rs[ri]*x[n]*(1 - x[n])

        # Bifurcation diagram warped by a sine function
        #x[n+1] = rs[ri]*x[n]*(1 - x[n]) + 0.2*np.sin(2*np.pi*x[n])**2

    u = np.unique(x[endcap])
    r = rs[ri]*np.ones(len(u))

    # Plot basic black lines
    plt.plot(r, u, 'k.', markersize=1)

plt.show()

# ----------------------------------------------------------------- End-of-file
