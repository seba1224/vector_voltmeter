import corr, time, os
import numpy as np
import matplotlib.pyplot as plt
import scipy.fftpack as fftpack
import struct

IP = '192.168.1.12'
bof = 'testing3.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)
time.sleep(2)
fpga.write_int('cnt_rst', 1)
fpga.write_int('cnt_rst', 0)



def get_data_long(bram_name):
    ###the decimate data       
    fpga.write_int('cnt_rst',1) 
    fpga.write_int('cnt_rst',0)
    time.sleep(1)
    fpga.write_int('get_data',1)
    fpga.write_int('get_data',0)
    aux = struct.unpack('>128l', fpga.read(bram_name, 128*4))
    aux = np.array(aux)
    return aux 

def get_data_ll(bram_name):
    #for pfb data
    fpga.write_int('cnt_rst',1)
    fpga.write_int('cnt_rst',0)
    fpga.write_int('get_data',1)
    fpga.write_int('get_data',0)
    aux = struct.unpack('>128q', fpga.read(bram_name, 128*8))
    aux = np.array(aux)
    return aux

def fft_plot(aux, fftlen, fin, ffin):
    y = fftpack.fft(aux[1:fftlen])
    power = np.abs(y)
    aux = power[:fftlen/2]
    f = np.linspace(fin, ffin, fftlen/2)
    return [f, aux]


def fft_data(fin, ffin, fftlen):
    fpga.write_int('get_data',1)
    aux = struct.unpack('>128Q', fpga.read(fft_out, 128*8))
    aux = np.array(aux)
    f = np.linspace(fin, ffin, fftlen/2)
    fft_data = aux[0:len(f)]
    plt.plot(f, fft_data[1:])
    plt.show()


fin = 1080./16*0.75
ffin = 1080./16

def plot_rapido():
    asd = get_data_long('4narrow')
    data = asd[0:64]
    qwe = fft_plot(data, len(data), fin, ffin)
    plt.figure()
    plt.plot(qwe[0],10*np.log10(qwe[1][::-1]), '*-')
    plt.title('fft dec data %d pts' %len(asd))

    asd = get_data_ll('pfb_out')
    data_pfb = asd[0:64]
    qwe = fft_plot(data_pfb, len(data_pfb), fin, ffin)
    plt.figure()
    plt.plot(qwe[0],10*np.log10(qwe[1][::-1]), '*-')
    plt.title('fft pfb data %d pts' %len(data_pfb))
    plt.show()





brams = ['4narrow', 'pfb_out', 'pfb_out1']







