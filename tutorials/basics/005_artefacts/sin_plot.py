#!/usr/bin/env python

import numpy as np
import matplotlib
import matplotlib.pyplot as plt

x = np.linspace(-2*np.pi, 2*np.pi, 501)
y = np.sin(x)

plt.plot(x, y, '-')
plt.savefig('sin.png')
