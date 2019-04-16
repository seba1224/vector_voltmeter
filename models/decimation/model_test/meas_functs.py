import numpy as np
import struct
import time
from math import *
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import ipdb

def plot_data(_fpga, _channels, _frec_init, _frec_end):
    global fpga, channels, bw, power, frec_init, frec_end
    fpga = _fpga; channels = _channels; frec_init = _frec_init; frec_end = _frec_end;
    
    fig = plt.figure()
    ax = fig.add_subplot(111)
    ax.set_xlabel('freq')
    ax.set_ylabel('pow')
    ax.set_xlim(frec_init, frec_end)
    ax.set_ylim(-10,100)
    power, = ax.plot([],[], lw=2)
    anim = animation.FuncAnimation(fig, animate, init_func=init, frames=200, interval=200)
    plt.show()
    
def init():
    power.set_data([],[])
    return power,

def read_data():
    global fpga
    A = struct.unpack('>32Q', fpga.read('pow_data', 32*8,0))
    A = np.array(A)
    log_a = 10*np.log10(A+1.0)
    #log_a = A[::-1]
    return log_a

def animate(i):
    global frec_init, frec_end
    val_read = read_data()
    freq = np.linspace(frec_init, frec_end, channels)
    power.set_data(freq, val_read)
    return power,
