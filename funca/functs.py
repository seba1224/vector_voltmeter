import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import struct
import ipdb
from math import trunc

def plot_data(_fpga, _channels):
    global data, fpga, channels, bw
    fpga = _fpga; channels = _channels;
    #bw = trunc(fpga.est_brd_clk()/2.)
    bw = 67.5
    print('in')
    fig = plt.figure()
    ax1 = fig.add_subplot(211)
    ax2 = fig.add_subplot(223)
    ax3 = fig.add_subplot(224)
    data1, = ax1.plot([],[], lw=2)
    data2, = ax2.plot([],[], lw=2)
    data3, = ax3.plot([], [], lw=2)
    data = [data1, data2, data3]
    ax1.set_title('Relative angle [rad]')
    ax1.set_xlabel('frequency?')
    ax1.set_ylabel('$\phi$[rad]')
    ax2.set_title('Power ZDOK0  [dB]')
    ax2.set_xlabel('frequency')
    ax2.set_ylabel('[dB]')
    ax3.set_title('Power ZDOK1 [dB]')
    ax3.set_xlabel('frequency')
    ax3.set_ylabel('[dB]')
    ax1.set_xlim(0,bw)
    ax1.set_ylim(-180, 180) #modificar el valor de los limites
    ax2.set_xlim(0,bw)
    #ax2.set_xlim(0, channels-1)
    ax2.set_ylim(10, 120)
    ax3.set_xlim(0,bw)
    ax3.set_ylim(10, 120)
    ax1.grid()
    ax2.grid()
    ax3.grid()
    anim = animation.FuncAnimation(fig, animate, init_func=init, interval=50, blit=True)
    plt.show()

def init():
    data[0].set_data([],[])
    data[1].set_data([],[])
    data[2].set_data([],[])
    #ipdb.set_trace()
    return data


def function():
    helper = '>'+str(channels)+'Q'
    A2 = struct.unpack(helper, fpga.read('A2', channels*8,0))
    B2 = struct.unpack(helper, fpga.read('B2', channels*8,0))
    AB_re = struct.unpack(helper, fpga.read('AB_re', channels*8, 0))
    AB_im = struct.unpack(helper, fpga.read('AB_im', channels*8, 0))
    print('crudo= '+str(A2[6068]))
    log_a = 10*np.log10(A2)
    log_b = 10*np.log10(B2)
    ang = np.rad2deg(np.arctan2(AB_im, AB_re))
#return [ang, log_a, log_b]
    return [ang, log_a, log_b]

def animate(i):
    freq = np.linspace(0, bw, channels, endpoint=False)
    #freq = np.linspace(0, channels-1, channels)
    aux = function()
    data[0].set_data(freq,aux[0])
    data[1].set_data(freq, aux[1])
    data[2].set_data(freq, aux[2])
    print(str(aux[1][6068])+'dB')
    
    return data

