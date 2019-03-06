import corr, time
import os
import numpy as np
import struct
import matplotlib.pyplot as plt

IP = '192.168.1.12'
bof = 'test_gpio2.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)

fpga.write_int('constant', 127)
fpga.write_int('reset', 1)
fpga.write_int('reset', 0)
fpga.write_int('enable', 0)
fpga.write_int('enable', 1)
time.sleep(2)

"""
bbox_vals = np.zeros(49)
for i in range(0, 49):
    fpga.write_int('index', i)
    bbox_vals[i] = fpga.read_int('bbox_out')
"""
open('gpio_data', 'w').close()
f = file('gpio_data', 'a')
raw_data = fpga.read('data', 2**15, 0)
f.write(raw_data)
f.close()
fpga.write_int('enable', 0)
print 'listoco'




def plot_reads(const):
    reg_bitsize = 128
    addr = 2**11
    n_lectures = reg_bitsize*addr 
    n_lectures_char = str(n_lectures/8)
    fpga.write_int('constant', const)
    fpga.write_int('enable', 1)
    data_in = struct.unpack('>'+n_lectures_char+'B', fpga.read('data', 2**15, 0))       
    arreglo = np.zeros(int(n_lectures_char))
    for i in range(len(parse_input)):
        aux = bin(parse_input[i])[2:].zfill(8)
        for j in range(8):
            arreglo[8*i+j] =aux[j]
    fpga.write_int('enable', 0)
    plt.plot(arreglo[:3000])
    plt.show()
    



