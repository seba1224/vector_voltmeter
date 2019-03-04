import corr, time
import os
import numpy as np

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



