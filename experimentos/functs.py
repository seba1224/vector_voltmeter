import numpy as np
import matplotlib.animation as animation
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
import Tkinter as tk
import ipdb
import matplotlib.pyplot as plt
from math import trunc
import struct


class Animated():
    def __init__(self, _fpga, _channels):
        global data, fpga, channels, bw
        fpga = _fpga; channels = _channels
        bw = trunc(fpga.est_brd_clk())
        
        self.root = tk.Tk()
        self.root.title('Measurings')
        
        fig = plt.figure()
        
        self.erase_chann = tk.IntVar()
        self.etiq1 = tk.Label(self.root, text='erase channel')
        self.erase = tk.Entry(self.root, textvariable=self.erase_chann,width=10)
        self.hold_max = tk.BooleanVar()
        self.hold_max_check = tk.Checkbutton(self.root, text='hold max', command=self.holder)
        self.save = tk.Button(self.root, text='Save data', command=self.save)
    
        self.etiq1.grid(column=200, row=1)
        self.erase.grid(column=201, row=1, columnspan=2)
        self.hold_max_check.grid(column=200, row=3)
        self.save.grid(column=201, row=3)
        
        canvas = FigureCanvasTkAgg(fig, master=self.root)
        canvas.get_tk_widget().grid(column=0, row=1)
        

        self.ax1 = fig.add_subplot(121)
        self.ax2 = fig.add_subplot(222)
        self.ax3 = fig.add_subplot(224)
        data1, = self.ax1.plot([], [], lw=2)
        data2, = self.ax2.plot([], [], lw=2)
        data3, = self.ax3.plot([], [], lw=2)
        data = [data1, data2, data3]
        
        self.ax1.set_title('Relative angle [rad]')
        self.ax1.set_xlabel('frequency?')
        self.ax1.set_ylabel('$\phi$[rad]')
        self.ax2.set_title('Power ZDOK0  [dB]')
        self.ax2.set_xlabel('frequency')
        self.ax2.set_ylabel('[dB]')
        self.ax3.set_title('Power ZDOK1 [dB]')
        self.ax3.set_xlabel('frequency')
        self.ax3.set_ylabel('[dB]')
        self.ax1.set_xlim(0,bw)
        self.ax1.set_ylim(-10, 10)
        self.ax2.set_xlim(0,bw)
        self.ax2.set_ylim(50, 150)
        self.ax3.set_xlim(0,bw)
        self.ax3.set_ylim(50, 100)
        self.ax1.grid()
        self.ax2.grid()
        self.ax3.grid()
 
        anim = animation.FuncAnimation(fig, self.animate, init_func=self.init, frames=200, blit=True)
        self.root.mainloop()
        

    def holder(self):
        return 1
        
    def save(self):
        self.dialog = tk.Toplevel()
        self.dialog.title('Parameters')
        self.dialog.geometry('300x100')
        etiq2 = tk.Label(self.dialog, text='doc\'s name')
        etiq2.grid(column=0, row=0)
        doc = tk.StringVar()
        self.doc_entry = tk.Entry(self.dialog, textvariable=doc, width=10)
        self.doc_entry.grid(column=1, row=0, columnspan=2)
        #self.doc_entry.bind('<Return>', self.save_funct)
        freq_chann = tk.IntVar()
        etiq4 = tk.Label(self.dialog, text='frequency to save[MHz]')
        etiq4.grid(column=0, row=5) 
        self.freq_entry = tk.Entry(self.dialog, textvariable=freq_chann, width=10)
        self.freq_entry.grid(column=1, row=5, columnspan=2)
        self.save_button = tk.Button(self.dialog, text='Accept', command=save_funct)
        quit_button = tk.Button(self.dialog, text=cancel, command=self.dialog.destroy)
        self.save_button.grid(column=0, row=7)
        quit_button.grid(column=1, row=7)
        self.root.wait_window(self.dialog) 
        return 1
        
        
    def save_funct(self):
        data_filename = self.doc_entry.get()
        df = trunc(bw/channels)
        addr2save = trunc(self.freq_entry.get()/df)
        #print(type(line))
        #print(type(line[0]))
        #print((line[0].get_data()[1][0]))
        open(data_filename, 'a').close()
        f = file(data_filename, 'a')
        f.write(line[0].get_data()[1][0][addr2save]) #aqui estaria escribiendo el angulo...
        f.write("\t")
        f.write(line[1].get_data()[1][0][addr2save])
        f.write("\t")
        f.write(line[2].get_data()[1][0][addr2save])
        f.write("\n")
        #f.write(line[0]+';'+line[1]+';'+line[2])
        #f.write('\n')
        f.close()
        self.dialog.destroy()
        print('writing done..')

    def init(self):
        data[0].set_data([],[])
        data[1].set_data([],[])
        data[2].set_data([],[])
        return data
    
    def get_data(self):
        A2 = struct.unpack('>8192Q', fpga.read('A2', 8192*8,0))
        B2 = struct.unpack('>8192Q', fpga.read('B2', 8192*8,0))
        AB_re = struct.unpack('>8192Q', fpga.read('AB_re', 8192*8, 0))
        AB_im = struct.unpack('>8192Q', fpga.read('AB_im', 8192*8, 0))
        log_a = 10*np.log10(A2)
        log_b = 10*np.log10(B2)             
        ang = np.arctan2(AB_im, AB_re)
        return [ang, log_a, log_b]
        
    def animate(self, i):
        freq = np.linspace(0, bw, channels, endpoint=False)
        aux = self.get_data()
        data[0].set_data(freq,aux[0])
        data[1].set_data(freq, aux[1])
        data[2].set_data(freq, aux[2])
        return data
        

