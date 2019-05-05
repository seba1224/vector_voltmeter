import numpy as np
import struct
import time
from math import *
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import ipdb

def plot_data(_fpga, _channels, _frec_init, _frec_end, _inv):
    global fpga, channels, bw, power, frec_init, frec_end, inv
    fpga = _fpga; channels = _channels; frec_init = _frec_init; frec_end = _frec_end; inv = _inv;
    
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
    if inv==1:
        A = A[::-1]
    log_a = 10*np.log10(A+1.0)
    #log_a = A[::-1]
    return log_a

def animate(i):
    global frec_init, frec_end
    val_read = read_data()
    freq = np.linspace(frec_init, frec_end, channels)
    power.set_data(freq, val_read)
    return power,



def snap(_snap_name, snap_trig):
    global snap_name
    snap_name = _snap_name
    fpga.write_int(snap_trig,1)
    fig, ax = plt.subplots()
    line, = plt.plot([], [], animated=True)
    plt.xlim(0,255)
    plt.ylim(-130,130)
    ani = animation.FuncAnimation(fig, anisnap, blit=True)
    plt.show()

def anisnap(i):
    snap_data = np.fromstring(fpga.snapshot_get(snap_name, man_trig=True, man_valid=True)['data'], dtype='>i1') # 'snapshot' string here must be the name of your snapshot block in the simulink model
    line.set_data(range(len(snap_data)), snap_data)
    return line,
    



