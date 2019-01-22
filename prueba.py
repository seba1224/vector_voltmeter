import numpy as np
import struct
import time
from math import *
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import ipdb

def plot_data(_fpga, _channels):
    global data, fpga, channels, bw
    fpga = _fpga; channels = _channels
    bw = 67 #trunc(fpga.est_brd_clk()/2.)
    fig = plt.figure()
    ax1 = fig.add_subplot(211)
    ax2 = fig.add_subplot(223)
    ax3 = fig.add_subplot(224)
    """ax1.set_title('Relative angle [rad]')
    ax1.set_xlabel('frequency?')
    ax1.set_ylabel('$\phi$[rad]')
    ax2.set_title('Power ZDOK0  [dB]')
    ax2.set_xlabel('frequency')
    ax2.set_ylabel('[dB]')
    ax3.set_title('Power ZDOK1 [dB]')
    ax3.set_xlabel('frequency')
    ax3.set_ylabel('[dB]')
    ax1.set_xlim(0,bw)
    ax1.set_ylim(-10, 10)
    ax2.set_xlim(0,bw)
    ax2.set_ylim(-10, 10)
    ax3.set_xlim(0,bw)
    ax3.set_ylim(-10, 10)
    ax1.grid()
    ax2.grid()
    ax3.grid()"""
    angle, = ax1.plot([], [], lw=2)
    powA, = ax2.plot([], [], lw=2)
    powB, = ax3.plot([], [], lw=2)
    data = [angle, powA, powB]
    #ipdb.set_trace()
    anim = animation.FuncAnimation(fig, animate, init_func=init, frames=200, interval=200, blit=True)
    plt.plot()


def init():
    data[0].set_data([],[])
    data[1].set_data([],[])
    data[2].set_data([],[])
    print(data)
    return data

def read_data():
    """Read and parse the values of the brams of the roach"""
    """Esto esta hecho para leer 64 bits en los brams... hay que modificar el modelo"""
    global fpga
    #A2 = struct.unpack('>16384Q', fpga.read('A2', 16384*8,0))          #me parece que es struct.unpack('>16384', fpga.read('A2', 16384*8,0))
    #B2 = struct.unpack('>16384Q', fpga.read('B2', 16384*8,0))
    #AB_re = struct.unpack('>16384Q', fpga.read('AB_re', 16384*8, 0))
    #AB_im = struct.unpack('>16384Q', fpga.read('AB_im', 16384*8, 0))
    A2 = np.random.rand(1, 16384)
    B2 = np.random.rand(1, 16384)
    AB_re = np.random.rand(1, 16384)
    AB_im = np.random.rand(1, 16384)
    log_a = 10*np.log10(A2)
    log_b = 10*np.log10(B2)
    ang = np.arctan2(AB_im, AB_re)
    return [ang, log_a, log_b]


def animate(i):
    global bw, channels
    print('animate')
    values_read = read_data()
    freq = np.linspace(0, bw, channels, endpoint=False)
    data[0].set_data(freq, values_read[0])
    data[1].set_data(freq, values_read[1])
    data[2].set_data(freq, values_read[2])
    print('animate')
    print(data)
    return data
