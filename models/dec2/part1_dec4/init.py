import corr, time, os
import numpy as np
import matplotlib.pyplot as plt
import struct
import scipy.fftpack as fftpack

IP = '192.168.1.12'
bof = 'testing.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)
time.sleep(2)

def get_data(bram_name):
    fpga.write_int('get_data',1)
    fpga.write_int('get_data',0)
    aux = struct.unpack('>128l', fpga.read(bram_name, 128*4))
    aux = np.array(aux)
    return aux

"""
def animate(_):
     snap_data = np.fromstring(fpga.snapshot_get('adcsnap2', man_trig=True, man_valid=True)['data'], dtype='>i1') # 'snapshot' string here must be the name of your snapshot block in the simulink model
    line.set_data(range(len(snap_data)), snap_data)
    return line,
    

def snap(snap_name, snap_trig):
    fpga.write_int(snap_trig, 1)
    fig, ax = plt.subplots()
    line, = plt.plot([], [], animated=True)
    plt.xlim(0,255)
    plt.ylim(-130,130)
    ani = FuncAnimation(fig, animate, blit=True)
    plt.show()
"""
def plot_data(aux,fftlen,fin, ffin):
    y = fftpack.fft(aux[1:fftlen])
    power = np.abs(y)
    aux = power[:fftlen/2]
    f = np.linspace(fin, ffin, fftlen/2)
    return [f, aux]
   


asd = get_data('4narrow') 
qwe = plot_data(asd, len(asd), fin, ffin)
plt.plot(qwe[0],qwe[1][::-1])  #la senal esta invertida por estar en una ventana de nyquist par
          








