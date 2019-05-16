import corr, time, os
import numpy as np
import matplotlib.pyplot as plt
import scipy.fftpack as fftpack
import struct

IP = '192.168.1.12'
bof = 'testing.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)
time.sleep(2)
fpga.write_int('cnt_rst', 1)
fpga.write_int('cnt_rst', 0)

def get_data_long(bram_name):
    fpga.write_int('get_data',1)
    fpga.write_int('get_data',0)
    aux = struct.unpack('>128l', fpga.read(bram_name, 128*4))
    aux = np.array(aux)
    return aux 

def get_data_ll(bram_name):
    fpga.write_int('get_data',1)
    fpga.write_int('get_data',0)
    aux = struct.unpack('>128Q', fpga.read(bram_name, 128*8))
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
    plt.plot(f, fft_data[::-1])
    plt.show()

fin = 1080./16*0.75
ffin = 1080./16
asd = get_data_long('4narrow')
qwe = fft_plot(asd, len(asd), fin, ffin)
plt.plot(qwe[0],qwe[1][::-1])

brams = ['4narrow', 'pfb_out', 'fft_out', 'fft_out1']






