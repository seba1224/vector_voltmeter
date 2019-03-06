import corr, time
import numpy as np
import struct
import matplotlib.pyplot as plt

IP = '192.168.1.12'
bof = 'test_gpio2.bof'

fpga = corr.katcp_wrapper.FpgaClient(IP)
time.sleep(3)
fpga.upload_program_bof(bof, 3000)

fpga.write_int('reset', 1)
fpga.write_int('reset', 0)
"""
bbox_vals = np.zeros(49)
for i in range(0, 49):
    fpga.write_int('index', i)
    bbox_vals[i] = fpga.read_int('bbox_out')
"""
"""
open(data_filename, 'w').close()
f = file(data_filename, 'a')
raw_data = fpga.read('data', 2**15, 0)
f.write(raw_data)
f.close()
print 'listoco'

#parse the gpio readings

reg_bitsize = 128
addr = 2**11
data_filename = 'gpio_data'
fr = file(data_filename, 'r')

n_lectures = reg_bitsize*addr
n_lect_in_char = str(n_lectures/8)
parse_input = struct.unpack('>'+n_lect_in_char+'b', fr.read(n_lectures))
fr.close()
plt.plot(parse_input)
plt.show()
"""
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
 
