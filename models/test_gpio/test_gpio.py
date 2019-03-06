import corr, time
import os
import numpy as np
import struct
import matplotlib.pyplot as plt
IP = '192.168.1.12'
bof = 'gpio_test.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)

fpga.write_int('reset', 1)
fpga.write_int('reset', 0)

bbox_vals = np.zeros(49)
for i in range(0, 49):
    fpga.write_int('index', i)
    bbox_vals[i] = fpga.read_int('bbox_out')


def read_gpio(n_lectures):
    fpga.write_int('reset', 1)
    fpga.write_int('reset', 0)
    fpga.write_int('enable',1)
    raw_data = fpga.read('data', 2**15, 0)
    n_lect_in_char = str(n_lectures/8)
    parse_input = struct.unpack('>'+n_lect_in_char+'b', raw_data)
    plt.plot(parse_input)
    plt.show()
    fpga.write_int('enable', 0)

reg_bitsize = 128
addr = 2**11
n_lectures = reg_bitsize*addr
read_gpio(n_lectures)
