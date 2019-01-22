import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import ipdb

def plot_data():
    global line
    fig = plt.figure()
    ax1 = fig.add_subplot(211)
    ax2 = fig.add_subplot(223)
    ax3 = fig.add_subplot(224)
    line1, = ax1.plot([], [], lw=2)
    line2, = ax2.plot([], [], lw=2)
    line3, = ax3.plot([], [], lw=2)
    line = [line1, line2, line3]
    
    for ax in [ax1, ax2, ax3]:
        ax.set_ylim(-2,2)
        ax.set_xlim(0, 2)
        ax.grid()
        
    anim = animation.FuncAnimation(fig, animation, init_func=init, frames=200, interval=200, blit=True)
    plt.show()    

def init():
    line[0].set_data([],[])
    line[1].set_data([],[])
    #line[2].set_data([],[])
    return line

def read_data():
    A2 = np.random.rand(1, 1000)
    B2 = np.random.rand(1, 1000)
    AB_re = np.random.rand(1, 1000)
    AB_im = np.random.rand(1, 1000)
    log_a = 10*np.log10(A2)
    log_b = 10*np.log10(B2)             
    ang = np.arctan2(AB_im, AB_re)
    return [ang, log_a, log_b]

def animate(i):
    print('asd')
    x = np.linspace(0, 2, 1000)
    aux = read_data()
    line[0].set_data(x,aux[0])
    line[1].set_data(x, aux[1])
    line[2].set_data(x, aux[2])
    return line
