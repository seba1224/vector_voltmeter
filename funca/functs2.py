import numpy as np
import matplotlib.animation as animation
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
import Tkinter as tk
import ipdb
import matplotlib.pyplot as plt
from math import trunc
import struct
import ipdb
import threading

class Get_data():
    def __init__(self, _fpga, _channels):
        global data, fpga, channels, bw, aux, enabler
        #define variables
        fpga = _fpga; channels = _channels
        enabler = 0
        bw = 67.5
        #initialize the widgets
        self.root = tk.Tk()
        self.root.title('Measurings')
        self.freq_chann = tk.DoubleVar(value=50.0)
        freq2meas_mssg = tk.Label(self.root, text='frequency to measure [MHz]')
        self.freq2meas = tk.Entry(self.root, textvariable=self.freq_chann, width=10)
        self.extra_chann = tk.IntVar()
        chann_span_mssg = tk.Label(self.root, text='channels span')
        self.chann_span = tk.Entry(self.root, textvariable=self.extra_chann, width=10)
        self.acc = tk.IntVar(value=1)
        avg_mssg = tk.Label(self.root, text='length of averaging')
        self.avg = tk.Entry(self.root, textvariable=self.acc, width=10)
        
        self.btn1 = tk.Button(self.root, text='Go', command=self.go)
        self.btn2 = tk.Button(self.root, text='Stop', command=self.end_meassuring)
        self.btn3 = tk.Button(self.root, text='Spectrogram', command=self.spect)
        
        self.ang = tk.DoubleVar()
        self.a2 = tk.DoubleVar()
        self.b2 = tk.DoubleVar()
        self.amp_rel = tk.DoubleVar()
        ang_mssg = tk.Label(self.root, text='Angle'+u'\xb0')
        a2_mssg = tk.Label(self.root, text='Amplitude ZDOK0')
        b2_mssg = tk.Label(self.root, text='Amplitude ZDOK1')
        amp_rel_mssg = tk.Label(self.root, text='Relative Amplitude')
        self.ang_entry = tk.Entry(self.root, textvariable=self.ang, width=10, foreground='yellow', background='black')
        self.a2_entry = tk.Entry(self.root, textvariable=self.a2, width=10, foreground='yellow', background='black')
        self.b2_entry = tk.Entry(self.root, textvariable=self.b2, width=10, foreground='yellow', background='black')
        self.amp_rel_entry = tk.Entry(self.root, textvariable=self.amp_rel, width=10, foreground='yellow', background='black')
        
        
        #place the widgets    
        freq2meas_mssg.grid(column=11, row=2)
        self.freq2meas.grid(column=12, row=2, columnspan=2)
        chann_span_mssg.grid(column=11, row=3) 
        self.chann_span.grid(column=12, row=3, columnspan=2)
        avg_mssg.grid(column=11, row=4)
        self.avg.grid(column=12, row=4, columnspan=2)
        self.btn1.grid(column=11, row=8)    
        self.btn2.grid(column=12, row=8)
        self.btn3.grid(column=11, row=9)
        self.ang_entry.grid(column=1, row=0)
        
        ang_mssg.grid(column=0, row=2)
        self.ang_entry.grid(column=1, row=2)    
        a2_mssg.grid(column=0, row=3)
        self.a2_entry.grid(column=1, row=3)
        b2_mssg.grid(column=0, row=4)
        self.b2_entry.grid(column=1, row=4)
        amp_rel_mssg.grid(column=0, row=5)
        self.amp_rel_entry.grid(column=1, row=5)
        
        #initialize the thread who actualize the windows
        #self.t = threading.Thread(target=self.obtain_data, name='data_thread')
        #self.t.start()  
        #initialize the window
        self.root.wm_protocol('WM_DELETE_WINDOW', self.terminate)      
        self.root.mainloop()
        
    def go(self):
        """generate a thread in charge of interpret the measurings of the roach"""
       # ipdb.set_trace()
        self.ang_data = np.zeros(int(self.avg.get()))
        self.amp_a2 = np.zeros(int(self.avg.get()))
        self.amp_b2 = np.zeros(int(self.avg.get()))
        self.ab_re = np.zeros(int(self.avg.get()))
        self.ab_im = np.zeros(int(self.avg.get()))
        df = bw*1.0/channels
        self.index = trunc(float(self.freq2meas.get())/df)
        self.index_offset = trunc(int(self.chann_span.get()))
        self.enabler = 1
        self.t = threading.Thread(target=self.obtain_data, name='data_thread')
        print(enabler)
        self.t.start()
        return 1    

    def obtain_data(self):
        """get tje avg of the relative amplitude and angle of the chosen freq and displays it"""
        ##MODIFY THIS
        #ipdb.set_trace()
        print('obtain_data')
        print(self.enabler)
        print(self.index)
        helper = '>'+str(1+int(self.chann_span.get()))+'Q'
        print('helper='+helper)
        while(self.enabler):
            #print('asd')
            #print('size'+str(1+int(self.chann_span.get())))
            #print('offset'+str(self.index-self.index_offset))
            A2 = struct.unpack(helper, fpga.read('A2', (1+int(self.chann_span.get()))*8, ((self.index-self.index_offset)*8)))            
            #print(A2)
            #print(str(10*np.log10(A2))+'dB')
            self.amp_a2[0] = np.mean(A2)
            self.amp_a2 = np.roll(self.amp_a2, -1)
            B2 =  struct.unpack(helper, fpga.read('B2', (1+int(self.chann_span.get()))*8, ((self.index-self.index_offset)*8)))
            self.amp_b2[0] = np.mean(B2)
            self.amp_b2 = np.roll(self.amp_b2, -1)
            AB_re = struct.unpack(helper, fpga.read('AB_re', (1+int(self.chann_span.get()))*8, ((self.index-self.index_offset)*8)))
            self.ab_re[0] = np.mean(AB_re)
            self.ab_re = np.roll(self.ab_re, -1)
            AB_im = struct.unpack(helper, fpga.read('AB_im', (1+int(self.chann_span.get()))*8, ((self.index-self.index_offset)*8)))
            self.ab_im[0] = np.mean(AB_im)
            self.ab_im = np.roll(self.ab_im, -1) 
            print('RE:' + str(self.ab_re)+ '\t IM:' +str(self.ab_im))
            log_a = 10*np.log10(np.mean(self.amp_a2)+1.0)
            log_b = 10*np.log10(np.mean(self.amp_b2)+1.0)             
            ang = np.rad2deg(np.arctan2(np.mean(self.ab_im), np.mean(self.ab_re)))  #review the way of avg this... i dont know if its the most correct way to do it...
            self.a2.set(log_a)
            self.b2.set(log_b)
            self.ang.set(ang)
            self.amp_rel.set(log_a-log_b)
            
                
    def end_meassuring(self):
        """end the display of data"""
        self.enabler = 0
        self.t.join()
        return 1

    def spect(self):
        """display a window with the spectrometer of the signals"""
        return 1
            

    def terminate(self):
        """clean exit function"""
        #enabler = 0
        #self.t.join()
        self.root.quit()

    


