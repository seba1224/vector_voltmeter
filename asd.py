import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import struct
import ipdb

def plot_data(_fpga, _channels):
    global data, fpga, channels, bw
    fpga = _fpga; channels = _channels;
    #bw = 67 
    trunc(fpga.est_brd_clk()/2.)
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
    ax1.set_ylim(-10, 10) #modificar el valor de los limites
    ax2.set_xlim(0,bw)
    ax2.set_ylim(-10, 10)
    ax3.set_xlim(0,bw)
    ax3.set_ylim(-10, 10)
    ax1.grid()
    ax2.grid()
    ax3.grid()
    #xdata, y1data, y2data = [], [], []
    #anim = animation.FuncAnimation(fig, animate, init_func=init, frames=200, interval=200, blit=True)
    anim = animation.FuncAnimation(fig, animate, init_func=init, interval=50, blit=True)
    plt.show()

def init():
    data[0].set_data([],[])
    data[1].set_data([],[])
    data[2].set_data([],[])
    #ipdb.set_trace()
    return data 


def function():
    A2 = struct.unpack('>16384Q', fpga.read('A2', 16384*8,0))
    B2 = struct.unpack('>16384Q', fpga.read('B2', 16384*8,0))
    AB_re = struct.unpack('>16384Q', fpga.read('AB_re', 16384*8, 0))
    AB_im = struct.unpack('>16384Q', fpga.read('AB_im', 16384*8, 0))
    #A2 = np.random.rand(1, 1000)
    #B2 = np.random.rand(1, 1000)
    #AB_re = np.random.rand(1, 1000)
    #AB_im = np.random.rand(1, 1000)

    log_a = 10*np.log10(A2)
    log_b = 10*np.log10(B2)             
    ang = np.arctan2(AB_im, AB_re)
    return [ang, log_a, log_b]

def animate(i):
    #print('asd')
    freq = np.linspace(0, bw, channels, endpoint=False)
    #x = np.linspace(0, 2, 1000)
    #y1 = np.sin(2*np.pi*(x-0.01*i))
    #y2 = np.cos(2*np.pi*(x-0.01*i))
    aux = function()
    data[0].set_data(freq,aux[0])
    data[1].set_data(freq, aux[1])
    data[2].set_data(freq, aux[2])
    return data



